using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using Michsky.UI.ModernUIPack;
using System;
using UnityEngine.Networking;

public partial class MainController : MonoBehaviour
{					
  // public NotificationManager myNotification;
  public GameObject loading;
  public GameObject closeButton;
  public GameObject toogleMenuButton;
  public GameObject lblNotFoundMessage;
				
  public GameObject userAvatar;	
  public GameObject txtFullUserName;
		
  public GameObject[] panels;
  public ChangedSelectedPanelEvent changedSelectedPanelEvent =  new ChangedSelectedPanelEvent();	
  public ViewTypeChangedEvent viewTypeChangedEvent;
	
  public HamburgerMenu hamburgerMenu;
  public mainScenePanelsEnum currentPanel;
	
  private WalletListAccountsController  walletListAccountsController;
  private ImportWalletAccountController importWalletAccountController;
  private CreateWalletController createWalletController;	
  private RemoveWalletAccountController removeWalletController;
  private AccountInfoController accountInfoController;
  private NewWorldController newWorldController;	
	
  public GameObject title;
	
  // Start is called before the first frame update
  void Start()
  {  
    var decodeToken = Common.DecodeToken();		
    this.txtFullUserName.GetComponent<Text>().text = decodeToken.email;
			
    //var imageHelper = new ImageHelper();
				
    var userdata = new userData();
    ES3.LoadInto<userData>(savedKeysEnum.userData.ToString(), userdata);		
				
    //var texture = imageHelper.Base64ToTexture2D(userdata.imageb64);				
    //this.userAvatar.GetComponent<Image>().sprite =  Sprite.Create(texture, new Rect(0, 0, texture.width, texture.height), new Vector2(.5f, .5f)); //  ().tex .material.SetTexture("abc",imageHelper.Base64ToTexture2D(userdata.imageb64));
		
    this.StartCoroutine(this.LoadUserImage(userdata.idImage));
		
    this.GoToPanel("Start_Panel");	    
    this.hamburgerMenu.gameObject.SetActive(true);
	    
    this.ResetPanels();
		
		
    this.changedSelectedPanelEvent.RemoveAllListeners();
  }
    
    
  public IEnumerator LoadUserImage(string userId)
  {
    yield return new WaitForSeconds(0f);		    
	    	
    var urlImage = Common.ApiURL + "/document/file/" + userId;
		
    Debug.Log(urlImage);
		
    UnityWebRequest request = UnityWebRequestTexture.GetTexture(urlImage);
    request.SetRequestHeader("Authorization", Common.GetTokenAuthorization());
		    
    yield return request.SendWebRequest();
		    
    try
    {
      if(request.isNetworkError || request.isHttpError) 
        Debug.Log(request.error);
      else
      {
        // image.sprite .mainTexture = ((DownloadHandlerTexture) request.downloadHandler).texture;
        Texture2D tex = ((DownloadHandlerTexture) request.downloadHandler).texture;
        Sprite sprite = Sprite.Create(tex, new Rect(0, 0, tex.width, tex.height), new Vector2(tex.width / 2, tex.height / 2));
        //this.image.GetComponent<Image>().overrideSprite = sprite;
				
        this.userAvatar.GetComponent<Image>().overrideSprite = sprite;
				
      }
    }
    catch(UnityException ex)
    {
		    	
    }
  }

    
  // Update is called once per frame
  void Update()
  {        
        
  }
    
  protected virtual void OnChangedSelectedPanelChanged(mainScenePanelsEnum e)
  {
    Debug.Log(changedSelectedPanelEvent.GetPersistentEventCount().ToString());
    changedSelectedPanelEvent?.Invoke(e);
  }
	
  protected virtual void OnViewTypeChanged(CurrentViewEnum e)
  {
    viewTypeChangedEvent?.Invoke(e);
  }
	
	
  public void SetTitle(string title, bool toUpper = true)
  {
    title = toUpper ? title.ToUpper() : title;
    this.title.GetComponent<Text>().text = title;
  }
	
	
  public void GoToPanel(string panel)
  {
    //Debug.Log(panel);
		
		
		
    this.hamburgerMenu.CloseMenu();		
		
    //SetTitle(string.Empty);
		
    StartCoroutine(this.SelectPanel(panel));
						
    // var panels = GameObject.FindGameObjectsWithTag("MainScenePanel");		
    // Debug.Log(panels.Length.ToString());
  }
	
  private void ResetPanels()
  {
    foreach(var p in panels)
    {	
      p.SetActive(false);
    }
		
    this.closeButton.SetActive(false);
    this.toogleMenuButton.SetActive(false);			
  }
	
  private IEnumerator SelectPanel(string panel)
  {
		
    this.closeButton.SetActive(false);
    this.toogleMenuButton.SetActive(false);
    this.lblNotFoundMessage.SetActive(false);
		
    yield return new WaitForSeconds(0.2f);
		
    var previousPanel = this.currentPanel;
		
    SetTitle(string.Empty);
		
    foreach(var p in panels)
    {									
      var isSelectedPanel = p.name == panel;
      this.currentPanel = isSelectedPanel ? (mainScenePanelsEnum) Enum.Parse(typeof(mainScenePanelsEnum),  panel) : currentPanel;
			
      p.SetActive(isSelectedPanel);

      var x = p.GetComponent<MainPanelSettings>();
			
      if(isSelectedPanel)
      {
        this.SetTitle(x.PanelTitle);
        this.closeButton.SetActive(x.ShowCloseButton);
				
        this.toogleMenuButton.SetActive(!x.ShowBackButton);									
      }
			
    }

    if(previousPanel!= this.currentPanel)
    {						
      OnChangedSelectedPanelChanged(this.currentPanel);
    }
  }
	
	
  public void LogoutClick()
  {
    this.GetComponent<Navigator>().GoToScene("Login_Scene");
  }
	
}



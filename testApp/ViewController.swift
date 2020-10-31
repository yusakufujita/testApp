import UIKit
import Firebase
import FirebaseUI

class ViewController: UIViewController, FUIAuthDelegate {
    
    
    var authUI: FUIAuth {get { return FUIAuth.defaultAuthUI()!}}
    // 認証に使用するプロバイダの選択
    let providers: [FUIAuthProvider] = [
        FUIGoogleAuth(),
        FUIOAuth.appleAuthProvider(),
        FUIAnonymousAuth()
        //FUIEmailAuth()
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // authUIのデリゲート
        self.authUI.delegate = self
        self.authUI.providers = providers
        checkLoggedIn()
    }
    
    func checkLoggedIn() {
            Auth.auth().addStateDidChangeListener{auth, user in
                if user != nil{
                    print("User is signed in.")
                } else {
                    print("User is signed out.")
                    self.login()
                }
            }
        }
    
    func login() {
        // FirebaseUIのViewの取得
        let authViewController = self.authUI.authViewController()
        // FirebaseUIのViewの表示
        self.present(authViewController, animated: true, completion: nil)
    }
    
    //　認証画面から離れたときに呼ばれる（キャンセルボタン押下含む）
    public func authUI(_ authUI: FUIAuth, didSignInWith user: User?, error: Error?){
        // 認証に成功した場合
        if error == nil {
            self.performSegue(withIdentifier: "toNextView", sender: nil)
            print("認証に成功した")
        } else {
            //失敗した場合
            print("error:\(error)")
        }
    }
    
}

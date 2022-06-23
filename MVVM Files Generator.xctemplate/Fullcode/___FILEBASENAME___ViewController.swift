//  ___FILEHEADER___

import UIKit

final class ___FILEBASENAMEASIDENTIFIER___: Z1BaseViewController {

    private let viewModel = <#Your ViewModel#>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commitUI()
        prepareComponentObservers()
    }
    
}

// MARK: - Computed Properties
extension ___FILEBASENAMEASIDENTIFIER___ {
    

}

// MARK: -Public Functions
extension ___FILEBASENAMEASIDENTIFIER___ {
    
    
}

// MARK: -Private Functions
extension ___FILEBASENAMEASIDENTIFIER___ {
    
    private func commitUI() {
        
    }
    
    private func prepareComponentObservers() {
        
        viewModel.obsIsRequesting.bind(listener: weakify({ this, requesting in
            requesting.unwrap({
                true == $0 ? this.showAppLoading() : this.hideAppLoading()
            })
        }))
        
        viewModel.obsOnFail.bind(listener: weakify({ this, error in
            error.unwrap({
                this.showAlertError(message: $0)
            })
        }))
        
        viewModel.obsShowNoInternetView.bind(listener: weakify({ this, show in
            show.unwrap({
                if true == $0 {
                    this.removeToastView()
                    this.showNoInternet()
                } else {
                    this.removeToastView()
                    this.hideNoInternet()
                }
            })
        }))
        
        viewModel.obsShowNoInternetToast.bind(listener: weakify({ this, show in
            show.unwrap({
                if true == $0 {
                    this.showToastNoConnection()
                } else {
                    this.removeToastView()
                }
            })
        }))
    }
}

//MARK: - Ojective C Functions
extension ___FILEBASENAMEASIDENTIFIER___ {
    
    
}




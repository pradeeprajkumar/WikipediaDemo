//
//  SearchViewController.swift
//  WikipediaDemo
//
//  Created by Pradeep Rajkumar on 07/10/18.
//  Copyright © 2018 Pradeep Rajkumar. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet var viewModel: SearchViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInitialConfigurations()
    }
    
    private func setupInitialConfigurations() {
        self.title = "Wikipedia demo"
        setKeyboardObservers()
    }
}


//MARK: Keyboard observers
extension SearchViewController {
    private func setKeyboardObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: Notification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: Notification.Name.UIKeyboardWillHide, object: nil)
    }
}

@objc extension SearchViewController {
    func keyboardWillShow(_ notification: Notification) {
        //Reduce the content inset of the collectionview
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            viewModel.resultsCollectionView.contentInset = UIEdgeInsetsMake(0, 0, keyboardSize.height, 0)
        }
    }
    
    func keyboardWillHide(_ notification: Notification) {
        //Reset the content inset of the collectionview
        viewModel.resultsCollectionView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
    }
}

//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Copyright © 2017 ___FULLUSERNAME___.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___ViewController: UIViewController {

    // MARK: - MVVM
    
    private lazy var viewManager: ___FILEBASENAMEASIDENTIFIER___ViewManager = ___FILEBASENAMEASIDENTIFIER___ViewManager(parentViewController: self)
    private var logicManager: ___FILEBASENAMEASIDENTIFIER___LogicManager!
    
    // MARK: - Initialization
    
    required init(viewModel: ___FILEBASENAMEASIDENTIFIER___ViewModel) {
        super.init(nibName: nil, bundle: nil)
        self.logicManager = ___FILEBASENAMEASIDENTIFIER___LogicManager(viewModel: viewModel, viewManager: viewManager)
    }
    
    convenience init(model: ___FILEBASENAMEASIDENTIFIER___) {
        self.init(viewModel: ___FILEBASENAMEASIDENTIFIER___ViewModel(model: model))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - Lifecycle Methods
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewManager.viewWillAppear(animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = viewManager.view
        viewManager.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewManager.viewDidAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        viewManager.viewWillDisappear(animated)
    }
}

import UIKit

protocol PostDetailsDisplayLogic: class
{
    func displayPosts(viewModel: [PostFieldsViewModel])
}

class PostDetailsViewController: UITableViewController, PostDetailsDisplayLogic
{
    var interactor: PostDetailsBusinessLogic?
    var router: (NSObjectProtocol & PostDetailsRoutingLogic & PostDetailsDataPassing)?
    var postData:[PostFieldsViewModel]?
    // MARK: Setup
    private func setup()
    {
        let viewController = self
        let interactor = PostDetailsInteractor()
        let presenter = PostDetailsPresenter()
        let router = PostDetailsRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
        
    }
    
    // MARK: View lifecycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        self.tableView.register(PostDetailTVCell.self, forCellReuseIdentifier: "PostDetailTVCell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44
        fetchPosts()
        navigationItem.title = "Home"
    }
    
    // MARK: fetchPosts
    
    func fetchPosts()
    {
        let request = PostDetails.Post.Request()
        interactor?.fetchPosts(request: request)
    }
    
    func displayPosts(viewModel: [PostFieldsViewModel])
    {
        postData = viewModel
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

extension PostDetailsViewController{
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return self.postData?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostDetailTVCell", for: indexPath) as! PostDetailTVCell
        cell.setUpData(data: (self.postData?[indexPath.row])!)
        return cell
    }
}


import UIKit

import RealmSwift

// MARK: - Categories Table View Controller
class CategoriesTableViewController: UITableViewController {
    
    // MARK: - Variables And Properties
    let realm: Realm = try! Realm()    // TODO: do/catch 사용해서 에러 핸들링 하기
    lazy var categories: Results<Category> = { self.realm.objects(Category.self) }()
    var selectedCategory: Category!
    

    // MARK: - View Controller
    override func viewDidLoad() {
        super.viewDidLoad()
        
        populateDefaultCategories()
    }
    
    private func populateDefaultCategories() {
        if categories.isEmpty {
            try! realm.write() {
                let defaultCategories: [String] = ["Birds", "Mammals", "Flora", "Reptiles", "Arachnids"]
                for category in defaultCategories {
                    let newCategory: Category = Category()
                    newCategory.name = category
                    
                    realm.add(newCategory)
                }
            }
            categories = realm.objects(Category.self)
        }
    }
}

// MARK: - Table View Data Source
extension CategoriesTableViewController {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        let category = categories[indexPath.row]
        if #available(iOS 14.0, *) {
            var content = cell.defaultContentConfiguration()
            content.text = category.name
            cell.contentConfiguration = content
        } else {
            cell.textLabel?.text = category.name
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        selectedCategory = categories[indexPath.row]
        return indexPath
    }
}

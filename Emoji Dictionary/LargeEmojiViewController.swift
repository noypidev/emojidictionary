//
//  LargeEmojiViewController.swift
//  Emoji Dictionary
//
//  Created by Remus Victuelles on 17/12/16.
//  Copyright © 2016 Noypi Dev. All rights reserved.
//

import UIKit

class LargeEmojiViewController: UIViewController {
    
    var emoji : Emoji = Emoji()
    
    @IBOutlet weak var largeEmojiLabel: UILabel!
    @IBOutlet weak var emojiDescriptionLabel: UILabel!
    @IBOutlet weak var emojiCategoryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        largeEmojiLabel.text = emoji._symbol
        emojiDescriptionLabel.text = emoji._description
        emojiCategoryLabel.text = emoji._categoryEnum.rawValue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

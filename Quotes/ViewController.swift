//
//  ViewController.swift
//  Quotes
//
//  Created by John Crawley on 13/06/2020.
//  Copyright © 2020 John Crawley. All rights reserved.
//

import UIKit


class ViewController: UIViewController
{
    //VARIABLES//
    let YEAR = Calendar.current.component(.year, from: Date())  //Get current year//
    let quotationMark = "\""
    //Quotes storage//
    let QUOTES =
    [
        "Gravitation cannot be held responsible for people falling in love. How on earth can you explain in terms of chemistry and physics so important a biological phenomenon as first love? Put your hand on a stove for a minute and it seems like an hour. Sit with that special girl for an hour and it seems like a minute. That's relativity.",
        
        "I believe in God and I certainly believe in the devil. There's certainly a devil and he knows my name",
        
        "They shall grow not old, as we that are left grow old. Age shall not weary them, nor the years condemn. At the going down of the sun and in the morning, we will remember them.",
        
        "One who cannot self motivate must be ok with mediocrity no matter how impressive their other talents",
        
        "Fuck following my dreams I'm just going to ask them where they're going and meet up with them later",
        
        "Another flaw in the human character is that everyone wants to build and nobody wants to do maintenance",
        
        "Somewhere, something incredible is waiting to be known.",
        
        "The greatest glory in living lies not in never falling, but in rising every time we fall",
        
        "Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking",
        
        "Life is what happens when you're busy making other plans.",
        
        "Spread love everywhere you go. Let no one ever come to you without leaving happier",
        
        "The future belongs to those who believe in the beauty of their dreams",
        
        
        "In the end, it's not the years in your life that count. It's the life in your years",
        
        
        "Only a life lived for others is a life worthwhile.",
        
        "Love the life you live. Live the life you love",
        
        
        "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose",
        
        "Success is not final; failure is not fatal: It is the courage to continue that counts",
        
        "The real test is not whether you avoid this failure, because you won't. It's whether you let it harden or shame you into inaction, or whether you learn from it; whether you choose to persevere"
        
        
        
        
    ]
    
    
    
    //Author storage//
    let AUTHORS =
    [
        "Albert Einstein",
        "Daniel Johnston",
        "Robert Laurence Botivinyon",
        "Andrew Carnegie",
        "Mitch Hedburg",
        "Kurt Vonnegut",
        "Carl Sagan",
        "Nelson Mandela",
        "Steve Jobs",
        "John Lennon",
        "Mother Teresa",
        "Eleanor Roosevelt",
        "Abraham Lincoln",
        "Albert Einstein",
        "Bob Marley",
        "Dr. Seuss",
        "Winston S. Churchill",
        "Barack Obama"
    ]
    
    
    //UI Elements//
    @IBOutlet weak var lblQuote: UILabel!       //Quote label //
    @IBOutlet weak var lblAuthor: UILabel!      //Author label //
    @IBOutlet weak var lblCopyright: UILabel!   //Copyright label //
    @IBOutlet weak var btnNextQuote: UIButton!  //Next Quote button //
    
    
    
    
    
    
    //View Did Load//
    override func viewDidLoad()
    {
        //View Did Load//
        super.viewDidLoad()
        
        //Empty Quote + Author on load//
        lblQuote.text = ""
        lblAuthor.text = ""
        
       //Set the copyright label + size//
        lblCopyright.text = "John Crawley \u{00A9} \(YEAR)"
        
        //Fit labels to size//
        lblCopyright.sizeToFit()
        lblCopyright.center.x = self.view.center.x
        
        //Default button title//
        btnNextQuote.setTitle("Show Quote", for: .normal)
        
    }
     
    
    
    
    
    
    
    
    //Next Quote Button is PRESSED//
    @IBAction func btnNextQuotePressed(_ sender: Any)
    {
        //Next quote button title//
        btnNextQuote.setTitle("Next Quote", for: .normal)
        //Random index value//
        let INDEX = Int(arc4random_uniform(UInt32(QUOTES.count)))
        //Set the quotes
        lblQuote.text  = "\(quotationMark)\(QUOTES[INDEX])\(quotationMark)"
        lblAuthor.text = "- \(AUTHORS[INDEX])"
    }
    

}

 

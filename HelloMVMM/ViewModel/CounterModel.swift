//
//  CounterModel.swift
//  HelloMVMM
//
//  Created by Anuj Soni on 21/05/22.
//

import Foundation

class CounterViewModel:ObservableObject{
    
@Published private var counter:Counter  = Counter()
    
var value:Int{
    counter.value
}

func increment(){
    counter.increment()
}
    
var premium:Bool{
    counter.isPremium
}
}
    


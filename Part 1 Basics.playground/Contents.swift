import UIKit

func handle(wallet: [Int], closure: (Int) -> Bool) -> [Int]
{
    var returnWallet = [Int]()
    for banknote in wallet {
        if closure(banknote) {
            returnWallet.append(banknote)
        }
    }
    return returnWallet
}

func compare100(banknote:Int) -> Bool {
    return banknote == 100
}
func compareMore1000(banknote: Int) -> Bool {
    return banknote >= 1000
}

let resultWalletOne = handle(wallet: wallet, closure: compare100)
let resultWalletTwo = handle(wallet: wallet, closure: compareMore1000)

handle(wallet: wallet, closure: {banknote in
return banknote >= 1000})

//
//  Presenter.swift
//  CryptoViper
//
//  Created by Melik Demiray on 22.12.2023.
//

import Foundation


enum NetworkError: Error {
    case NetworkaFail
    case ParsingFail
}

protocol AnyPresenter {

    var router: AnyRouter? { get set }
    var interactor: AnyInteractor? { get set }
    var view: AnyView? { get set }


    func interactorDidDownloadCryptoData(result: Result<[Crypto], Error>)
}

class CryptoPresenter: AnyPresenter {

    var interactor: AnyInteractor?
    var view: AnyView?
    var router: AnyRouter?

    func interactorDidDownloadCryptoData(result: Result<[Crypto], Error>) {
        switch result {
        case .success(let cryptoList):
            //view?.updateView(with: cryptoList))
            print("Update")
        case .failure(let error):
            //view?.showError(error)
            print("Error")
        }
    }
}

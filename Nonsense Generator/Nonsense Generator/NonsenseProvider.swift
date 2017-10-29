import Foundation

class NonsenseProvider {

    private let nonsenseMatrix = [
        ["Gitt", "Under hensyntagen til", "I lys av", "Vedrørende", "Grunnet", "I betraktning av", "Forutsatt"],
        ["en integrert", "en optimal", "en sømløs", "en implisitt", "en proaktiv", "en betydelig", "en økt"],
        ["målsetting", "effekt", "struktur", "agenda", "tidshorisont", "overveielse", "mobilitet"],
        ["synliggjøres", "tas det høyde for", "iverksettes", "identifiseres", "initieres", "lokaliseres", "kommuniseres"],
        ["potensialet", "risikofaktorene", "fokus", "synergieffekten", "incitamentet", "forankringen", "insentivene"],
        ["innenfor rammen av", "som en følge av", "for så vidt gjelder", "med henblikk på", "i forhold til", "hva angår", "parallelt med"],
        ["en samlet vurdering", "forholdene", "konseptet", "ressurssituasjonen", "tilgjengeliggjøringen", "føringene", "evalueringen"]
    ]


    func generateSentence() -> String {
        let phrases = nonsenseMatrix.map { $0.randomElement()! }
        let sentence = phrases.joined(separator: " ") + "."

        return sentence
    }

}

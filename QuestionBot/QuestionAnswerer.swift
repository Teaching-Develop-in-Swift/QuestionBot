struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        
        let lowerQuestion = question.lowercased()
        
        if !lowerQuestion.hasSuffix("?") {
            return "Is that a question?"
        }
        
        if lowerQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        } else if lowerQuestion.hasPrefix("where") {
            return "To the North!"
        } else if lowerQuestion.hasPrefix("hello") {
            return "Why hello there!"
        } else {
          
            let defaultNumber = question.count % 3
            
            if defaultNumber == 0 {
                return "That really depends"
            } else if defaultNumber == 1 {
                return "No more cookies!"
            } else {
                return "Ask me again tomorrow"
            }

        }
    }
}

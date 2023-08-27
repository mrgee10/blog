class FeedbackMailer < ApplicationMailer

    def feedback_mailer(author, feedback)
        @feedback = feedback
        mail(
            to: author.email,
            subject: "New Feedback" 
        )
    end
end

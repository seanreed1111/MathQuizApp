FactoryGirl.define do
  factory :question do
    text "What is 1/2 + 1/3?"
    ls "6.RP.1.3."
    ls_type "RP"

    factory :invalid_question_text do
      text ""
    end

    factory :invalid_question_ls do
      ls ""
    end

    factory :invalid_question_ls_type do
      ls_type ""
    end
  end
end
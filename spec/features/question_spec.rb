require "rails_helper"

RSpec.feature "we can create a valid Question with factories" do 
  let(:question) {FactoryGirl.create(:question)}
  let(:invalid_question_text) {FactoryGirl.build(:invalid_question_text)}
  let(:invalid_question_ls) {FactoryGirl.build(:invalid_question_ls)}
  let(:invalid_question_ls_type) {FactoryGirl.build(:invalid_question_ls_type)}
  let(:correct_answer) {FactoryGirl.create(:correct_answer, question: question)}
  let(:incorrect_answer) {FactoryGirl.create(:incorrect_answer, question: question)}

  before do

  end

  describe Question do
    it "is valid with non-empty question text, learning standard, learning standard type" do
      expect(question).to be_valid
    end


    it "is invalid without a learning standard" do
      expect(invalid_question_ls).to_not be_valid
    end

    it "is invalid without a learning standard" do
      expect(invalid_question_ls_type).to_not be_valid
    end

    it "is invalid without question text" do
      expect(invalid_question_text).to_not be_valid
    end

    it "has one correct answer"
    it "has zero or more incorrect answers"
  end
end


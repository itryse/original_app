require 'rails_helper'
RSpec.describe User, type: :model do
  describe 'ユーザーの新規登録' do
    it 'nicknameが空では登録することができない' do
      user = FactoryBot.build(:user)
      user.nickname = ''
      user.valid?
      expect(user.errors.full_messages).to include "Nicknameを入力してください"
    end

    it 'emailが空では登録することができない' do
      user = FactoryBot.build(:user)
      user.email = ''
      user.valid?
      expect(user.errors.full_messages).to include "Emailを入力してください"
    end

    it '性別が空では登録することができない' do
      user = FactoryBot.build(:user)
      user.gender_id = ''
      user.valid?
      expect(user.errors.full_messages).to include "Genderは数値で入力してください"
    end

    it '年齢が空では登録することができない' do
      user = FactoryBot.build(:user)
      user.age_id = ''
      user.valid?
      expect(user.errors.full_messages).to include "Ageは数値で入力してください"
    end

    it '自己紹介が空では登録することができない' do
      user = FactoryBot.build(:user)
      user.profile = ''
      user.valid?
      expect(user.errors.full_messages).to include 'Profileを入力してください'
    end

  end
end

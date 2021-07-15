require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザーの新規登録' do

    context '新規登録できるとき' do
      it '全ての情報が正しく記入されていれば登録することができる' do
        @user.save
        expect(@user).to be_valid
      end
    end

    context '新規登録できないとき' do
      it 'nicknameが空では登録することができない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Nicknameを入力してください"
      end

      it 'emailが空では登録することができない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Emailを入力してください"
      end

      it 'emailに＠がなければ登録できない' do
        @user.email = 'testgmail.com'
        @user.valid?
        expect(@user.errors.full_messages).to include("Emailは不正な値です")
      end

      it '重複したemailアドレスが存在する場合は登録することができない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Emailはすでに存在します")
      end

      it '性別が空では登録することができない' do
        @user.gender_id = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Genderは数値で入力してください"
      end

      it '年齢が空では登録することができない' do
        @user.age_id = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Ageは数値で入力してください"
      end

      it '自己紹介が空では登録することができない' do
        @user.profile = ''
        @user.valid?
        expect(@user.errors.full_messages).to include 'Profileを入力してください'
      end
    end

  end
end

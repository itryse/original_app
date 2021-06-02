class Occupation < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '戦士'},
    { id: 3, name: '武道家'},
    { id: 4, name: '魔法使い'},
    { id: 5, name: '僧侶'},
    { id: 6, name: '盗賊'},
    { id: 7, name: '遊び人'}
  ]

  include ActiveHash::Associations
  has_many :users
end
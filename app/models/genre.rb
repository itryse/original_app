class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '仕事'},
    { id: 3, name: 'お金'},
    { id: 4, name: '内的成長'},
    { id: 5, name: '外的成長'},
    { id: 6, name: '健康'},
    { id: 7, name: '家庭'},
    { id: 8, name: '学業'},
    { id: 9, name: '恋愛'},
    { id: 10, name: '趣味'},
    { id: 11, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :posts
end
class NowWeight < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '40kg'},
    { id: 3, name: '41kg'},
    { id: 4, name: '42kg'},
    { id: 5, name: '43kg'},
    { id: 6, name: '44kg'},
    { id: 7, name: '45kg'},
    { id: 8, name: '46kg'},
    { id: 9, name: '47kg'},
    { id: 10, name: '48kg'},
    { id: 11, name: '49kg'},
    { id: 12, name: '50kg'},
    { id: 13, name: '51kg'},
    { id: 14, name: '52kg'},
    { id: 15, name: '53kg'},
    { id: 16, name: '54kg'},
    { id: 17, name: '55kg'},
    { id: 18, name: '56kg'},
    { id: 19, name: '57kg'},
    { id: 20, name: '58kg'},
    { id: 21, name: '59kg'},
    { id: 22, name: '60kg'},
    { id: 23, name: '61kg'},
    { id: 24, name: '62kg'},
    { id: 25, name: '63kg'},
    { id: 26, name: '64kg'},
    { id: 27, name: '65kg'},
    { id: 28, name: '66kg'},
    { id: 29, name: '67kg'},
    { id: 30, name: '68kg'},
    { id: 31, name: '69kg'},
    { id: 32, name: '70kg'},
    { id: 33, name: '71kg'},
    { id: 34, name: '72kg'},
    { id: 35, name: '73kg'},
    { id: 36, name: '74kg'},
    { id: 37, name: '75kg'},
    { id: 38, name: '76kg'},
    { id: 39, name: '77kg'},
    { id: 40, name: '80kg'},
    { id: 41, name: '81kg'},
    { id: 42, name: '82kg'},
    { id: 43, name: '83kg'},
    { id: 44, name: '84kg'},
    { id: 45, name: '85kg'},
    { id: 46, name: '86kg'},
    { id: 47, name: '87kg'},
    { id: 48, name: '88kg'},
    { id: 49, name: '89kg'},
    { id: 50, name: '90kg'},
    { id: 51, name: '91kg'},
    { id: 52, name: '92kg'},
    { id: 53, name: '93kg'},
    { id: 54, name: '94kg'},
    { id: 55, name: '95kg'},
    { id: 56, name: '96kg'},
    { id: 57, name: '97kg'},
    { id: 58, name: '98kg'},
    { id: 59, name: '99kg'},
    { id: 60, name: '100kg'},
  ]

  include ActiveHash::Associations
  has_many :users
end
Feature: using match keyword

  @match
    #how to make assertions with Karate
  Scenario: some matching example

    * def name = "Recep Acar"
    * match name == "Recep Acar"
    * match name != "Eren"


  Scenario: more matching example

    *   def employee =
"""
  {
  "firstName": "Bülent",
  "salary": 50000,
  "active": true
  }
"""
    * match employee.firstName == "Bülent"
    * match employee.salary == 50000
    * match employee.active == true

  @fuzzy
  Scenario: fuzzy matching
    *   def employee =
"""
  {
  "firstName": "Bülent",
  "salary": 50000,
  "active": true
  }
"""
    ## type assertion
    * match employee.firstName == "#string"
    * match employee.salary == "#number"
    * match employee.active == "#boolean"
    ## firstname key e var mı
    * match employee.firstName == "#present"
    ## lastname key yok mu
    * match employee.lastName == "#notpresent"
    @contains
    Scenario:  contains matching
      * def students =
      """
      [
      {
      "name": 'Emre',
      "salary" :41500
      },
      {
      "name": "Büşra",
      "salary":42000
      }
      ]
      """
      * def lenghtOfArray = students.length
      * print lenghtOfArray
      * match lenghtOfArray == 2
      * match students contains {"name": "Emre","salary": 41500}










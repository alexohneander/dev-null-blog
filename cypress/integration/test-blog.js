describe('Test Start Page', () => {
    it('Visits the Start Page', () => {
      cy.visit('http://localhost:4000/')
      cy.contains('Alex Wellnitz')
    })
  })

describe('Test About Page', () => {
    it('Visits the About Page', () => {
      cy.visit('http://localhost:4000/about/')
      cy.contains('Alex Wellnitz')
      cy.contains('moin@wellnitz-alex.de')
      cy.contains('hosted on Docker Swarm.')
    })
  })
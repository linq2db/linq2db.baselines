BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[a_PersonDoctor].[FirstName]
FROM
	[Doctor] [d]
		INNER JOIN [Person] [a_PersonDoctor] ON ([d].[PersonID] = [a_PersonDoctor].[PersonID])


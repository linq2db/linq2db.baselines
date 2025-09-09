BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] + ' ' + CStr(1) = 'John 1'


BeforeExecute
-- Access AccessOleDb

SELECT
	IIF(NOT ([p].[FirstName] IS NULL OR Len([p].[FirstName]) = 0), [p].[FirstName], IIF(NOT ([p].[MiddleName] IS NULL OR Len([p].[MiddleName]) = 0), [p].[MiddleName], [p].[LastName]))
FROM
	[Person] [p]


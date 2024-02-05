BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IN ('oh', 'oh''', 'oh\')


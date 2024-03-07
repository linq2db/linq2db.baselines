BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[FirstName],
	Count(*)
FROM
	[Person] [p]
GROUP BY
	[p].[FirstName]


BeforeExecute
-- Access AccessOleDb

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'joH%' AND [p].[PersonID] = 1

BeforeExecute
-- Access AccessOleDb

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE 'joH%' AND [p].[PersonID] = 1


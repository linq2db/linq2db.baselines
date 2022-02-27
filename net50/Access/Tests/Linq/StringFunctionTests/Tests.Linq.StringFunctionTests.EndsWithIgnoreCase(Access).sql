BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE '%JOHN' AND [p].[PersonID] = 1

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE '%JOHN' AND [p].[PersonID] = 1


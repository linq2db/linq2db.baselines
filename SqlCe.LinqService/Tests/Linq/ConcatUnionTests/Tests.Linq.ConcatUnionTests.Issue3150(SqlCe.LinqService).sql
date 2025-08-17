BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[PersonID] as [ID],
	[p].[FirstName],
	CAST('id=1' AS NVarChar(255)) as [Marker]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1
UNION ALL
SELECT
	[p_1].[PersonID] as [ID],
	[p_1].[FirstName],
	CAST('id=2' AS NVarChar(255)) as [Marker]
FROM
	[Person] [p_1]
WHERE
	[p_1].[PersonID] = 2


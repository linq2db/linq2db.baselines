BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	[p].[PersonID],
	[p].[FirstName],
	CAST(N'id=1' AS NVarChar(4000))
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1
UNION ALL
SELECT
	[p_1].[PersonID],
	[p_1].[FirstName],
	CAST(N'id=2' AS NVarChar(4000))
FROM
	[Person] [p_1]
WHERE
	[p_1].[PersonID] = 2


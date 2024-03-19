BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'e'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN 1 = 0 THEN 2
		ELSE CharIndex(@p, [p].[LastName], 3) - 1
	END = 4 AND
	[p].[PersonID] = 2


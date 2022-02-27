BeforeExecute
-- SqlServer.2017
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[p_1].[PersonID],
	[p_1].[FirstName]
FROM
	(
		SELECT
			[p].[PersonID] + @n as [PersonID],
			[p].[FirstName]
		FROM
			[Person] [p]
	) [p_1]
WHERE
	[p_1].[PersonID] = 2


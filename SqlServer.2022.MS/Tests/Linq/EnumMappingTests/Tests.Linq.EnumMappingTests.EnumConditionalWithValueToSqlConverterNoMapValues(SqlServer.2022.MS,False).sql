-- SqlServer.2022.MS SqlServer.2022
DECLARE @level Int -- Int32
SET     @level = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	IIF([p].[PersonID] > 2, 2, 1) = @level
ORDER BY
	[p].[PersonID]


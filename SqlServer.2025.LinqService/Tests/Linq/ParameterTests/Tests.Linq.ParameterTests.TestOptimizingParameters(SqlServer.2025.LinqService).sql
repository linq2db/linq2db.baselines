BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id OR [t1].[PersonID] <= @id


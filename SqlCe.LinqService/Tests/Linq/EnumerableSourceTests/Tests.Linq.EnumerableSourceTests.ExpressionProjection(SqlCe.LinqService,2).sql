BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 4

SELECT
	[n].[FirstName],
	[n].[PersonID] as [ID]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT 'Janet' AS [FirstName], @ID AS [PersonID]
			UNION ALL
			SELECT 'Doe' AS [FirstName], @ID_1 AS [PersonID]) [n] ON [p].[PersonID] = [n].[PersonID]
ORDER BY
	[n].[PersonID]


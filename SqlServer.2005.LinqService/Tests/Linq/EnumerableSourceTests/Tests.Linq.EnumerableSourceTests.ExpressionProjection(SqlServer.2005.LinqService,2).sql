BeforeExecute
-- SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 4

SELECT
	[n].[FirstName],
	[n].[PersonID]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT N'Janet' AS [FirstName], @ID AS [PersonID]
			UNION ALL
			SELECT N'Doe', @ID_1) [n] ON [p].[PersonID] = [n].[PersonID]
ORDER BY
	[n].[PersonID]


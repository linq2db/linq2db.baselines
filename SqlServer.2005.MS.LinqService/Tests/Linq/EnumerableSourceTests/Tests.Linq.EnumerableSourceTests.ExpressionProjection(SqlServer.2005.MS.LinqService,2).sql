BeforeExecute
--  SqlServer.2005.MS SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 4

SELECT
	[n].[PersonID],
	[n].[FirstName]
FROM
	[Person] [t1]
		INNER JOIN (
			SELECT @ID AS [PersonID], N'Janet' AS [FirstName]
			UNION ALL
			SELECT @ID_1, N'Doe') [n] ON [t1].[PersonID] = [n].[PersonID]
ORDER BY
	[n].[PersonID]


BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 4

SELECT
	[n].[ID],
	[n].[FirstName]
FROM
	[Person] [t1]
		INNER JOIN (
			SELECT @ID AS [ID], N'Janet' AS [FirstName]
			UNION ALL
			SELECT @ID_1, N'Doe') [n] ON [t1].[PersonID] = [n].[ID]
ORDER BY
	[n].[ID]


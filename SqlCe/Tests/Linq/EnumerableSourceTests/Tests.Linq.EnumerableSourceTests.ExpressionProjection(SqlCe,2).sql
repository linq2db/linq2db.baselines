BeforeExecute
--  SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 4

SELECT
	[n].[PersonID] as [ID],
	[n].[FirstName]
FROM
	[Person] [t1]
		INNER JOIN (
			SELECT @ID AS [PersonID], 'Janet' AS [FirstName]
			UNION ALL
			SELECT @ID_1 AS [PersonID], 'Doe' AS [FirstName]) [n] ON [t1].[PersonID] = [n].[PersonID]
ORDER BY
	[n].[PersonID]


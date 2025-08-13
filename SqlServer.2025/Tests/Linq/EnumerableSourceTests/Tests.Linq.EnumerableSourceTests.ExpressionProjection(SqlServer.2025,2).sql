BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 4

SELECT
	[n].[ID],
	[n].[FirstName]
FROM
	[Person] [t1]
		INNER JOIN (VALUES
			(@ID,N'Janet'), (@ID_1,N'Doe')
		) [n]([ID], [FirstName]) ON [t1].[PersonID] = [n].[ID]
ORDER BY
	[n].[ID]


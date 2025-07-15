BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @ID_1  -- Int32
SET     @ID_1 = 4

SELECT
	[n].[ID],
	[n].[FirstName]
FROM
	[Person] [t1]
		INNER JOIN (
			SELECT NULL [ID], NULL [FirstName] WHERE 1 = 0
			UNION ALL
			VALUES
				(@ID,'Janet'), (@ID_1,'Doe')
			) [n] ON [t1].[PersonID] = [n].[ID]
ORDER BY
	[n].[ID]


BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @ID_1  -- Int32
SET     @ID_1 = 4

SELECT
	[n].[PersonID],
	[n].[FirstName]
FROM
	[Person] [t1]
		INNER JOIN (
			SELECT NULL [PersonID], NULL [FirstName] WHERE 1 = 0
			UNION ALL
			VALUES
				(@ID,'Janet'), (@ID_1,'Doe')
			) [n] ON [t1].[PersonID] = [n].[PersonID]
ORDER BY
	[n].[PersonID]


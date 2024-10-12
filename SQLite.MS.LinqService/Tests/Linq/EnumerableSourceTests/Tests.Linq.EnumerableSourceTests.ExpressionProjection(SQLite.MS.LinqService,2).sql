BeforeExecute
-- SQLite.MS SQLite
DECLARE @iteration  -- Int32
SET     @iteration = 2

SELECT
	[n].[FirstName],
	[n].[PersonID]
FROM
	[Person] [t1]
		INNER JOIN (
			SELECT NULL [FirstName], NULL [PersonID] WHERE 1 = 0
			UNION ALL
			VALUES
				('Janet',1 + @iteration), ('Doe',2 + @iteration)
			) [n] ON [t1].[PersonID] = [n].[PersonID]
ORDER BY
	[n].[PersonID]


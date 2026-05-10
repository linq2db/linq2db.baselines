-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @Id_1  -- Int32
SET     @Id_1 = 11

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT NULL [Id] WHERE 1 = 0
			UNION ALL
			VALUES
				(@Id), (@Id_1)
			) [r] ON [p].[PersonID] = [r].[Id]


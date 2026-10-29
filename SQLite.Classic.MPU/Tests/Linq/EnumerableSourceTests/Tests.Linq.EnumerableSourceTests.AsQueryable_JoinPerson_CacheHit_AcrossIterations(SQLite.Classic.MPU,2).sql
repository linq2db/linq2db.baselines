-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 21
DECLARE @Id_2 Integer -- Int32
SET     @Id_2 = 22

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
				(@Id), (@Id_1), (@Id_2)
			) [r] ON [p].[PersonID] = [r].[Id]


-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Name NVarChar(10) -- String
SET     @Name = 'me_default'

INSERT INTO [DynamicColumnsTestTable]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[DynamicColumnsTestTable] [t1]


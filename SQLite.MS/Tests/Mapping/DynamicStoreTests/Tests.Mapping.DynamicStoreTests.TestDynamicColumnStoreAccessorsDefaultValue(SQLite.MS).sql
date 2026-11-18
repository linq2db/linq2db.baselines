-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Name NVarChar(12) -- String
SET     @Name = 'accessor_def'

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

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[DynamicColumnsTestTable] [t1]


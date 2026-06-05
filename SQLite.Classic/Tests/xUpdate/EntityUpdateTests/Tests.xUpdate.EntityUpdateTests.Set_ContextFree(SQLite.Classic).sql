-- SQLite.Classic SQLite
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'x'
DECLARE @Version  -- Int32
SET     @Version = 5
DECLARE @stamp VarChar(23) -- AnsiString
SET     @stamp = '2026-06-01 00:00:00.000'
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[EntityUpdateTest]
SET
	[Name] = @Name,
	[Version] = @Version,
	[UpdatedAt] = @stamp,
	[UpdatedBy] = @UpdatedBy
WHERE
	[EntityUpdateTest].[Id] = @Id

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[EntityUpdateTest] [t1]
LIMIT 2


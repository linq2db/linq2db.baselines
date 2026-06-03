-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Type  -- Int32
SET     @Type = 1
DECLARE @Stored NVarChar(4) -- String
SET     @Stored = 'John'

INSERT INTO [CalcSubtypeDual]
(
	[Id],
	[Type],
	[Stored]
)
VALUES
(
	@Id,
	@Type,
	@Stored
)

-- SQLite.Classic SQLite

SELECT
	[t1].[Type],
	[t1].[Id],
	[t1].[Stored],
	Coalesce([t1].[Stored], '') || '!'
FROM
	[CalcSubtypeDual] [t1]
LIMIT 2


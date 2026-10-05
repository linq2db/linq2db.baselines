-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value VarChar(23) -- AnsiString
SET     @Value = '2026-06-01 10:00:00.000'
DECLARE @Day VarChar(23) -- AnsiString
SET     @Day = '2026-06-01 00:00:00.000'
DECLARE @Wide VarChar(23) -- AnsiString
SET     @Wide = '2026-06-01 10:00:00.000'

INSERT INTO [CoarseDateShapesRow]
(
	[Id],
	[Value],
	[Day],
	[Wide]
)
VALUES
(
	@Id,
	@Value,
	@Day,
	@Wide
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', Date([r].[Value])) = strftime('%Y-%m-%d %H:%M:%f', '2026-06-01 00:00:00.000')

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', Date([r].[Value])) < strftime('%Y-%m-%d %H:%M:%f', '2026-06-01 00:00:00.000')

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', '2026-06-01 00:00:00.000') = strftime('%Y-%m-%d %H:%M:%f', Date([r].[Value]))


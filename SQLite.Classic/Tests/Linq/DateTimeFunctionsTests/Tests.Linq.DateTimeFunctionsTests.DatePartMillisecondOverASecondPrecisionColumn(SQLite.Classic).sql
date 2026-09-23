-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
SELECT
	CAST(strftime('%f', [r].[Value]) * 1000 AS INTEGER) % 1000
FROM
	[CoarseDateShapesRow] [r]
LIMIT 2

-- SQLite.Classic SQLite
SELECT
	CAST(strftime('%f', [r].[Value]) * 1000 AS INTEGER) % 1000
FROM
	[CoarseDateShapesRow] [r]
LIMIT 2


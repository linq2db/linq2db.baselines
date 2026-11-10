-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
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

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	Date([r].[Value])
FROM
	[CoarseDateShapesRow] [r]
UNION ALL
SELECT
	[r_1].[Day]
FROM
	[CoarseDateShapesRow] [r_1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CASE
		WHEN [r].[Id] > 0 THEN Date([r].[Value])
		ELSE Date([r].[Value])
	END
FROM
	[CoarseDateShapesRow] [r]


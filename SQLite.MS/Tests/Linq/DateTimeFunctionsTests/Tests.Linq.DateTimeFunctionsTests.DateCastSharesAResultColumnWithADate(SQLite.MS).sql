-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value  -- DateTime
SET     @Value = '2026-06-01 10:00:00.000'
DECLARE @Day  -- Date
SET     @Day = '2026-06-01 00:00:00.000'
DECLARE @Wide  -- DateTime
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

-- SQLite.MS SQLite
SELECT
	Date([r].[Value])
FROM
	[CoarseDateShapesRow] [r]
UNION ALL
SELECT
	[r_1].[Day]
FROM
	[CoarseDateShapesRow] [r_1]

-- SQLite.MS SQLite
SELECT
	CASE
		WHEN [r].[Id] > 0 THEN Date([r].[Value])
		ELSE Date([r].[Value])
	END
FROM
	[CoarseDateShapesRow] [r]


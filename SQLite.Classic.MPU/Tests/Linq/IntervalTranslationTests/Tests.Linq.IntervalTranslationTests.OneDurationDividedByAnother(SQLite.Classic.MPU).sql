-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Half  -- Int64
SET     @Half = 900
DECLARE @Whole  -- Int64
SET     @Whole = 1800
DECLARE @WholeMs  -- Int64
SET     @WholeMs = 1800000

INSERT INTO [RatioRow]
(
	[Id],
	[Half],
	[Whole],
	[WholeMs]
)
VALUES
(
	@Id,
	@Half,
	@Whole,
	@WholeMs
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CAST([r].[Whole] * 10000000 AS Float) / CAST([r].[WholeMs] * 10000 AS Float),
	CAST([r].[Half] * 10000000 AS Float) / CAST([r].[Whole] * 10000000 AS Float)
FROM
	[RatioRow] [r]
LIMIT 2


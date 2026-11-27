-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value  -- Int32
SET     @Value = 100

SELECT TOP 1
	[x].[Value]
FROM
	[ConvertedItem] [x]
WHERE
	[x].[Value] > @Value

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ConvertedItem] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value  -- Int32
SET     @Value = 100

SELECT
	[t1].[Item1],
	[t1].[Item1_1]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT TOP 1
				1 as [Item1],
				[x].[Value] as [Item1_1]
			FROM
				[ConvertedItem] [x]
			WHERE
				[x].[Value] > @Value
		) [t1] ON 1=1


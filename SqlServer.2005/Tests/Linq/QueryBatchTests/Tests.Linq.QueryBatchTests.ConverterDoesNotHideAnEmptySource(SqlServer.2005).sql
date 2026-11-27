-- SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = 100

SELECT TOP (1)
	[x].[Value]
FROM
	[ConvertedItem] [x]
WHERE
	[x].[Value] > @Value

-- SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = 100

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ConvertedItem] [t1]
;
SELECT
	[t1].[Item1],
	[t1].[Item1_1]
FROM
	(
		SELECT
			1 as [c1]
	) [t2]
		LEFT JOIN (
			SELECT TOP (1)
				1 as [Item1],
				[x].[Value] as [Item1_1]
			FROM
				[ConvertedItem] [x]
			WHERE
				[x].[Value] > @Value
		) [t1] ON 1=1


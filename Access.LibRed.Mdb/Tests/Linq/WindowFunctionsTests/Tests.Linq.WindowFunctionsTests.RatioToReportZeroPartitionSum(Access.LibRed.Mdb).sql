-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[Id],
	[t].[IntValue] / CASE
		WHEN SUM([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId]) = 0
			THEN NULL
		ELSE SUM([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId])
	END
FROM
	[WindowFunctionTestEntity] [t]


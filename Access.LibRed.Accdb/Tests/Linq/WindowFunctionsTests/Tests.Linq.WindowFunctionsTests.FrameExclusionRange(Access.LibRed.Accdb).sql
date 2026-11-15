-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	SUM([t].[IntValue]) OVER (ORDER BY [t].[Id] RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING EXCLUDE CURRENT ROW)
FROM
	[WindowFunctionTestEntity] [t]


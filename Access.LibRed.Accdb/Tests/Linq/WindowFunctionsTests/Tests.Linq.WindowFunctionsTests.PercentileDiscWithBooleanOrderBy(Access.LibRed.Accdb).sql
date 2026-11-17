-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[g_1].[CategoryId],
	PERCENTILE_DISC(0.5) WITHIN GROUP (ORDER BY ([g_1].[IntValue] MOD 20 = 0) DESC),
	PERCENTILE_DISC(0.90000000000000002) WITHIN GROUP (ORDER BY ([g_1].[IntValue] MOD 20 = 0) DESC)
FROM
	[WindowFunctionTestEntity] [g_1]
GROUP BY
	[g_1].[CategoryId]
ORDER BY
	[g_1].[CategoryId]


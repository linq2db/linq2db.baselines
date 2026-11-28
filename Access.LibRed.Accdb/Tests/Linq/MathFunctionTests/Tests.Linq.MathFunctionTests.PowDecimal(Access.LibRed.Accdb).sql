-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t].[Value_1]
FROM
	(
		SELECT
			Int(CDec([p].[MoneyValue] ^ 3)) as [Value_1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[Value_1] <> 0


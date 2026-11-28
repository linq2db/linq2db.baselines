-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t].[c1]
FROM
	(
		SELECT
			Sgn([p].[MoneyValue]) * ((Int(Abs([p].[MoneyValue]) * CDec(10 ^ 1)) + Int((Abs([p].[MoneyValue]) * CDec(10 ^ 1) - Int(Abs([p].[MoneyValue]) * CDec(10 ^ 1))) * 2)) / CDec(10 ^ 1)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0


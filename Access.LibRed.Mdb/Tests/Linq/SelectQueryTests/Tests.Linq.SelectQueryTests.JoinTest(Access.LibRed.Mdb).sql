-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t].[Id],
	[t].[Value],
	[s].[Key_1],
	[s].[SecondValue]
FROM
	[SampleClass] [t],
	(
		SELECT
			1 as [Key_1],
			3 as [SecondValue]
	) [s]
WHERE
	1 = [t].[Id]


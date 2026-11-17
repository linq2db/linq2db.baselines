-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t].[Id],
	[t].[Value],
	[s].[c1]
FROM
	[SampleClass] [t],
	(
		SELECT
			1 as [c1]
	) [s]
WHERE
	1 = [t].[Id]


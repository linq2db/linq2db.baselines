-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	DateAdd('d', [t].[Value], Now),
	DateAdd('d', 2, Now)
FROM
	[SampleClass] [t]
WHERE
	[t].[Value] = 1
UNION
SELECT
	DateAdd('d', 3, Now),
	DateAdd('d', 4, Now)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[v_1].[Value2]
FROM
	(
		SELECT
			DateAdd('d', [v].[Value], Now) as [Value1],
			DateAdd('d', 2, Now) as [Value2]
		FROM
			[SampleClass] [v]
		WHERE
			[v].[Value] = 1
		UNION
		SELECT
			DateAdd('d', 3, Now) as [Value1],
			DateAdd('d', 4, Now) as [Value2]
	) [v_1]


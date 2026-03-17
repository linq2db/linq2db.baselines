-- SqlCe

SELECT
	[c_2].[Key_1]
FROM
	(
		SELECT
			SUM([c_1].[Value]) as [Sum_1],
			[c_1].[Key] as [Key_1]
		FROM
			[Issue5327Table] [c_1]
		GROUP BY
			[c_1].[Key]
	) [c_2]
ORDER BY
	[c_2].[Sum_1] DESC

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Key] as [Key_1],
	[t1].[Value] as [Value_1]
FROM
	[Issue5327Table] [t1]


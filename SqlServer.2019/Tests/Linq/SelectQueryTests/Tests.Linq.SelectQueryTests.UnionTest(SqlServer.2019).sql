-- SqlServer.2019

SELECT
	DateAdd(day, [t].[Value], CURRENT_TIMESTAMP),
	DateAdd(day, 2, CURRENT_TIMESTAMP)
FROM
	[SampleClass] [t]
WHERE
	[t].[Value] = 1
UNION
SELECT
	DateAdd(day, 3, CURRENT_TIMESTAMP),
	DateAdd(day, 4, CURRENT_TIMESTAMP)

-- SqlServer.2019

SELECT
	[v_1].[Value2]
FROM
	(
		SELECT
			DateAdd(day, [v].[Value], CURRENT_TIMESTAMP) as [Value1],
			DateAdd(day, 2, CURRENT_TIMESTAMP) as [Value2]
		FROM
			[SampleClass] [v]
		WHERE
			[v].[Value] = 1
		UNION
		SELECT
			DateAdd(day, 3, CURRENT_TIMESTAMP) as [Value1],
			DateAdd(day, 4, CURRENT_TIMESTAMP) as [Value2]
	) [v_1]


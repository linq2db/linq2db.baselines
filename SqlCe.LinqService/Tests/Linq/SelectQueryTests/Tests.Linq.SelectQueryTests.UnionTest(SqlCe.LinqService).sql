﻿BeforeExecute
-- SqlCe

SELECT
	DateAdd(day, [t].[Value], GetDate()) as [Value1],
	DateAdd(day, 2, GetDate()) as [Value2]
FROM
	[SampleClass] [t]
WHERE
	[t].[Value] = 1
UNION
SELECT
	DateAdd(day, 3, GetDate()) as [Value1],
	DateAdd(day, 4, GetDate()) as [Value2]

BeforeExecute
-- SqlCe

SELECT
	[v_1].[Value2]
FROM
	(
		SELECT
			DateAdd(day, [v].[Value], GetDate()) as [Value1],
			DateAdd(day, 2, GetDate()) as [Value2]
		FROM
			[SampleClass] [v]
		WHERE
			[v].[Value] = 1
		UNION
		SELECT
			DateAdd(day, 3, GetDate()) as [Value1],
			DateAdd(day, 4, GetDate()) as [Value2]
	) [v_1]


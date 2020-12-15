BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [SampleClass]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	DateAdd(day, [t].[Value], CURRENT_TIMESTAMP),
	DateAdd(day, 2, CURRENT_TIMESTAMP)
FROM
	[SampleClass] [t]
WHERE
	[t].[Value] = 1
UNION
SELECT
	[t1].[Value1],
	[t1].[Value2]
FROM
	(
		SELECT
			DateAdd(day, 3, CURRENT_TIMESTAMP) as [Value1],
			DateAdd(day, 4, CURRENT_TIMESTAMP) as [Value2]
	) [t1]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[v].[Value2]
FROM
	(
		SELECT
			DateAdd(day, [t].[Value], CURRENT_TIMESTAMP) as [Value1],
			DateAdd(day, 2, CURRENT_TIMESTAMP) as [Value2]
		FROM
			[SampleClass] [t]
		WHERE
			[t].[Value] = 1
		UNION
		SELECT
			[t1].[Value1],
			[t1].[Value2]
		FROM
			(
				SELECT
					DateAdd(day, 3, CURRENT_TIMESTAMP) as [Value1],
					DateAdd(day, 4, CURRENT_TIMESTAMP) as [Value2]
			) [t1]
	) [v]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [SampleClass]


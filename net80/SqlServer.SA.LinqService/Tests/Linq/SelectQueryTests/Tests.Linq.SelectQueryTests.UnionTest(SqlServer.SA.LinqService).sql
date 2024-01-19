BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]


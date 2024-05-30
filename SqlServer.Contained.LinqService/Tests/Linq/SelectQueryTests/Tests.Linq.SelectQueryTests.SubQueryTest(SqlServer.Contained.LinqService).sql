BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value Int -- Int32
SET     @Value = 100

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t_1].[Id],
	[t_1].[Value],
	[t2].[not_null],
	[t2].[Value1],
	[t2].[Value2]
FROM
	[SampleClass] [t_1]
		LEFT JOIN (
			SELECT TOP (1)
				[t1].[Value1],
				[t1].[Value2],
				1 as [not_null]
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
						DateAdd(day, 3, CURRENT_TIMESTAMP) as [Value1],
						DateAdd(day, 4, CURRENT_TIMESTAMP) as [Value2]
				) [t1]
		) [t2] ON 1=1

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]


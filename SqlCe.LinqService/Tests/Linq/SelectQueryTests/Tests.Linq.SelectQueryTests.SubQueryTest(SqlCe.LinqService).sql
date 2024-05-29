BeforeExecute
-- SqlCe

DROP TABLE [SampleClass]

BeforeExecute
-- SqlCe

CREATE TABLE [SampleClass]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlCe
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
-- SqlCe

SELECT
	[t_1].[Id],
	[t_1].[Value] as [Value_1],
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
				) [t1]
		) [t2] ON 1=1

BeforeExecute
-- SqlCe

DROP TABLE [SampleClass]


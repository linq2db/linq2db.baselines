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

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
SELECT 1,100

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t_1].[Id],
	[t_1].[Value],
	[t2].[Value1],
	[t2].[Value2],
	[t2].[is_empty]
FROM
	[SampleClass] [t_1]
		OUTER APPLY (
			SELECT TOP (@take)
				[t1].[Value1],
				[t1].[Value2],
				1 as [is_empty]
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
		) [t2]

BeforeExecute
-- SqlCe

DROP TABLE [SampleClass]


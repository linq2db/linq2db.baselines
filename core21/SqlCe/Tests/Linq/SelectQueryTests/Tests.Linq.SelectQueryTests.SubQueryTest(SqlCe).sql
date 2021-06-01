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

SELECT TOP (@take)
	[t2].[Value1],
	[t2].[Value2]
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
			[t1].[Value1],
			[t1].[Value2]
		FROM
			(
				SELECT
					DateAdd(day, 3, GetDate()) as [Value1],
					DateAdd(day, 4, GetDate()) as [Value2]
			) [t1]
	) [t2]

BeforeExecute
-- SqlCe

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[SampleClass] [t]

BeforeExecute
-- SqlCe

DROP TABLE [SampleClass]


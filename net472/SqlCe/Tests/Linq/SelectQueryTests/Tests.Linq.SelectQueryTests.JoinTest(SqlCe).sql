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

SELECT
	[t].[Id],
	[t].[Value],
	[t1].[c1],
	[t1].[c2]
FROM
	[SampleClass] [t]
		INNER JOIN (
			SELECT
				1 as [c1],
				3 as [c2]
		) [t1] ON [t1].[c1] = [t].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [SampleClass]


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
	[t].[Value] as [Value_1],
	1 as [s]
FROM
	[SampleClass] [t]

BeforeExecute
-- SqlCe

DROP TABLE [SampleClass]


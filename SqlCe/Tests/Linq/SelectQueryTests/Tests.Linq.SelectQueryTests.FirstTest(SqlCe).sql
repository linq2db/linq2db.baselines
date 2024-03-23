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

SELECT TOP (1)
	DateAdd(day, 1, GetDate()) as [Value1],
	DateAdd(day, 2, GetDate()) as [Value2]

BeforeExecute
-- SqlCe

DROP TABLE [SampleClass]


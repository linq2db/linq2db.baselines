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
	1,
	3
FROM
	[SampleClass] [t]
		INNER JOIN (
			SELECT
				1 as [Key_1]
		) [s] ON [s].[Key_1] = [t].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [SampleClass]


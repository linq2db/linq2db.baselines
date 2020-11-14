BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [SampleClass]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(1,100)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017

DROP TABLE [SampleClass]


BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [SampleClass]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(1,100)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t].[Id],
	[t].[Value],
	1
FROM
	[SampleClass] [t]
		INNER JOIN (
			SELECT
				1 as [c1]
		) [s] ON [s].[c1] = [t].[Id]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [SampleClass]


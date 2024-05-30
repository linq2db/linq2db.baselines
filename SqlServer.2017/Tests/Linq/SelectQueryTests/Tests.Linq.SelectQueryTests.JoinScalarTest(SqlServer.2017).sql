BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(1,100)

BeforeExecute
-- SqlServer.2017

SELECT
	[t].[Id],
	[t].[Value],
	1
FROM
	[SampleClass] [t]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [SampleClass]


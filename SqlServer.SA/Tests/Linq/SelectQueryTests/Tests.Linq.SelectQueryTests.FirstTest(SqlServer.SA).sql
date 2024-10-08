BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	1,
	CURRENT_TIMESTAMP,
	2

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]


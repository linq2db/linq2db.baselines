BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022

SELECT TOP (1)
	CURRENT_TIMESTAMP

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [SampleClass]


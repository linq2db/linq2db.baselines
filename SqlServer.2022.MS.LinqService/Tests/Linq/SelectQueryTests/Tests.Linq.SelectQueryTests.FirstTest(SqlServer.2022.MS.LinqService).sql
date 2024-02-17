BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	DateAdd(day, 1, CURRENT_TIMESTAMP),
	DateAdd(day, 2, CURRENT_TIMESTAMP)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [SampleClass]


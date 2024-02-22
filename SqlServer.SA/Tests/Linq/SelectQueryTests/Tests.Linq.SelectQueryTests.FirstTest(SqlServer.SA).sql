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
	DateAdd(day, 1, CURRENT_TIMESTAMP),
	DateAdd(day, 2, CURRENT_TIMESTAMP)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [SampleClass]


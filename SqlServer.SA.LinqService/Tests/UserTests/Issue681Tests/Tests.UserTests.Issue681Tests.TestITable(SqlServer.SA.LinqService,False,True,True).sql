BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue681Table]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NULL)
	CREATE TABLE [Issue681Table]
	(
		[ID]    Int NOT NULL,
		[Value] Int NOT NULL,

		CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[TestDataSA].[dbo].[Issue681Table] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue681Table]


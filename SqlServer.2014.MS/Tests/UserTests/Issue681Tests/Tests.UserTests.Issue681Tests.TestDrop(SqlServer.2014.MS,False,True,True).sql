BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue681Table2]', N'U') IS NOT NULL)
	DROP TABLE [Issue681Table2]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [Issue681Table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

DROP TABLE [TestDataMS].[dbo].[Issue681Table2]


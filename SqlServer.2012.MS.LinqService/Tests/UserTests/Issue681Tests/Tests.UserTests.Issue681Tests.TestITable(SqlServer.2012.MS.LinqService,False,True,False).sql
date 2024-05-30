BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue681Table]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NULL)
	CREATE TABLE [Issue681Table]
	(
		[ID]    Int NOT NULL,
		[Value] Int NOT NULL,

		CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[TestDataMS]..[Issue681Table] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue681Table]


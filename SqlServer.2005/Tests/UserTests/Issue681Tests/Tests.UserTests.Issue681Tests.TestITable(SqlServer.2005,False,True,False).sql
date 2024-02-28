BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue681Table]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NULL)
	CREATE TABLE [Issue681Table]
	(
		[ID]    Int NOT NULL,
		[Value] Int NOT NULL,

		CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[TestData]..[Issue681Table] [t1]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue681Table]


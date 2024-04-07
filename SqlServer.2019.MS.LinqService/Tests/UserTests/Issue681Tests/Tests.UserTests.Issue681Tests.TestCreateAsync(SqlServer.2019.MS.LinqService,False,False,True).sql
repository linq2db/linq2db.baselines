BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue681Table]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NULL)
	CREATE TABLE [Issue681Table]
	(
		[ID]    Int NOT NULL,
		[Value] Int NOT NULL,

		CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue681Table2]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue681Table]


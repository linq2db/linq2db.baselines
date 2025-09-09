BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

DROP TABLE IF EXISTS [Issue681Table2]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

CREATE TABLE [Issue681Table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

DROP TABLE [dbo].[Issue681Table2]


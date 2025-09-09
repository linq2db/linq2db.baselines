BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

DROP TABLE IF EXISTS [Issue681Table2]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

CREATE TABLE [TestDataMS]..[Issue681Table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

DROP TABLE IF EXISTS [Issue681Table2]


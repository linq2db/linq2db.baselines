﻿BeforeExecute
-- SqlServer.2019

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue681Table2]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [TestData]..[Issue681Table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue681Table2]


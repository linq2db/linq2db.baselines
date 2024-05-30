﻿BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue681Table]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NULL)
	CREATE TABLE [Issue681Table]
	(
		[ID]    Int NOT NULL,
		[Value] Int NOT NULL,

		CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2016

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2016

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue681Table2]

BeforeExecute
-- SqlServer.2016

CREATE TABLE [Issue681Table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2016

DROP TABLE [TestData].[dbo].[Issue681Table2]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue681Table]


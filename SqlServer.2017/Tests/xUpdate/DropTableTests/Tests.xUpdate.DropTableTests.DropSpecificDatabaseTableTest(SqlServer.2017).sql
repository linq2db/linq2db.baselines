﻿BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SqlServer.2017

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2017

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2017

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2017

INSERT INTO [TestData].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[TestData].[dbo].[DropTableTest] [t1]

BeforeExecute
-- SqlServer.2017

DROP TABLE [TestData].[dbo].[DropTableTest]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[TestData].[dbo].[DropTableTest] [t1]


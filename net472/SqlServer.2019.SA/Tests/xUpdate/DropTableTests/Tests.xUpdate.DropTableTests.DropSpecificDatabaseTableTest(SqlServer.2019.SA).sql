﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

INSERT INTO [TestData2019SA].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[TestData2019SA].[dbo].[DropTableTest] [t1]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [TestData2019SA].[dbo].[DropTableTest]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[TestData2019SA].[dbo].[DropTableTest] [t1]


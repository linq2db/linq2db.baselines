BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

INSERT INTO [TestData2019SA].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestData2019SA].[dbo].[DropTableTest] [t1]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

DROP TABLE [TestData2019SA].[dbo].[DropTableTest]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestData2019SA].[dbo].[DropTableTest] [t1]


BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.SA SqlServer.2019

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [TestDataSA].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestDataSA].[dbo].[DropTableTest] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE [TestDataSA].[dbo].[DropTableTest]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestDataSA].[dbo].[DropTableTest] [t1]


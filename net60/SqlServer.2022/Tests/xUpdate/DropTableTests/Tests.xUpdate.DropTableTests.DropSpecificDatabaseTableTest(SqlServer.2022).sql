BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2022

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2022

INSERT INTO [TestData].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[ID]
FROM
	[TestData].[dbo].[DropTableTest] [t1]

BeforeExecute
-- SqlServer.2022

DROP TABLE [TestData].[dbo].[DropTableTest]

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[ID]
FROM
	[TestData].[dbo].[DropTableTest] [t1]


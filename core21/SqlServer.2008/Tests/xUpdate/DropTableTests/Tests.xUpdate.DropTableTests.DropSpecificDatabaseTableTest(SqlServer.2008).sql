BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[DropTableTest]', N'U') IS NOT NULL)
	DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2008

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2008

INSERT INTO [TestData2008].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[ID]
FROM
	[TestData2008].[dbo].[DropTableTest] [t1]

BeforeExecute
-- SqlServer.2008

DROP TABLE [TestData2008].[dbo].[DropTableTest]

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[ID]
FROM
	[TestData2008].[dbo].[DropTableTest] [t1]


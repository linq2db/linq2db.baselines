BeforeExecute
-- SqlServer.2016 SqlServer.2012

IF (OBJECT_ID(N'[DropTableTest]', N'U') IS NOT NULL)
	DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

INSERT INTO [TestData2016].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t1].[ID]
FROM
	[TestData2016].[dbo].[DropTableTest] [t1]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [TestData2016].[dbo].[DropTableTest]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t1].[ID]
FROM
	[TestData2016].[dbo].[DropTableTest] [t1]


BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[DropTableTest]', N'U') IS NOT NULL)
	DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [TestData2019].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[TestData2019].[dbo].[DropTableTest] [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [TestData2019].[dbo].[DropTableTest]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[TestData2019].[dbo].[DropTableTest] [t1]


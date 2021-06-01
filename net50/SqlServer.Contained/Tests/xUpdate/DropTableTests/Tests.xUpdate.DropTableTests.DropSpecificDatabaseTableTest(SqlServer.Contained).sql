BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.Contained SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

INSERT INTO [TestDataContained].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[TestDataContained].[dbo].[DropTableTest] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE [TestDataContained].[dbo].[DropTableTest]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[TestDataContained].[dbo].[DropTableTest] [t1]


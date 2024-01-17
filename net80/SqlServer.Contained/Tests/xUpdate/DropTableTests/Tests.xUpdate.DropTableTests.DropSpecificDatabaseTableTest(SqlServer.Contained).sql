BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

INSERT INTO [TestDataContained].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestDataContained].[dbo].[DropTableTest] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE [TestDataContained].[dbo].[DropTableTest]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[TestDataContained].[dbo].[DropTableTest] [t1]


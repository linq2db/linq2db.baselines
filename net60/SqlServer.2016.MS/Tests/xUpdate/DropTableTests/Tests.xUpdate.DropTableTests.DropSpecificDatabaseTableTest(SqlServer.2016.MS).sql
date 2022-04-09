BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [TestDataMS].[dbo].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[TestDataMS].[dbo].[DropTableTest] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE [TestDataMS].[dbo].[DropTableTest]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[TestDataMS].[dbo].[DropTableTest] [t1]


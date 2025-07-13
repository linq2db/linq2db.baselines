BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]


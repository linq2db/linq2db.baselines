BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [DropTableTest]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

INSERT INTO [DropTableTest]
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
	[DropTableTest] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE [DropTableTest]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]


-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [DropTableTest]

-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE [DropTableTest]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]


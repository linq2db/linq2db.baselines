-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [DropTableTest]

-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE [DropTableTest]

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]


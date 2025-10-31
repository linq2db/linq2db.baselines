-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [DropTableTest]

-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

-- SqlServer.2016.MS SqlServer.2016

DROP TABLE [DropTableTest]

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]


-- SqlServer.2019

DROP TABLE IF EXISTS [DropTableTest]

-- SqlServer.2019

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

-- SqlServer.2019

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

-- SqlServer.2019

DROP TABLE [DropTableTest]

-- SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]


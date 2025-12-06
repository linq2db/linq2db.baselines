-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [DropTableTest]

-- SqlServer.Contained SqlServer.2019

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.Contained SqlServer.2019

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

-- SqlServer.Contained SqlServer.2019

DROP TABLE [DropTableTest]

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]


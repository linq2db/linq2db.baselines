-- SqlServer.2014

IF (OBJECT_ID(N'[DropTableTest]', N'U') IS NOT NULL)
	DROP TABLE [DropTableTest]

-- SqlServer.2014

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2014

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.2014

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

-- SqlServer.2014

DROP TABLE [DropTableTest]

-- SqlServer.2014

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]


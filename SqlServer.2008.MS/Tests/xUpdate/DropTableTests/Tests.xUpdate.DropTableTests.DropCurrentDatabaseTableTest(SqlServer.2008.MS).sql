-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[DropTableTest]', N'U') IS NOT NULL)
	DROP TABLE [DropTableTest]

-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

-- SqlServer.2008.MS SqlServer.2008

DROP TABLE [DropTableTest]

-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]


-- SqlServer.2025.MS SqlServer.2025

DROP TABLE IF EXISTS [DropTableTest]

-- SqlServer.2025.MS SqlServer.2025

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2025.MS SqlServer.2025

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

-- SqlServer.2025.MS SqlServer.2025

DROP TABLE [DropTableTest]

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]


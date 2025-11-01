-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [DropTableTest]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DROP TABLE [DropTableTest]

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]


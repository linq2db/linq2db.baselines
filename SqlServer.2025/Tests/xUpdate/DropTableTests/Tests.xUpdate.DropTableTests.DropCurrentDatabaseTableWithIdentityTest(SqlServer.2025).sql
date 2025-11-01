-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [DropTableTestID]

-- SqlServer.2025 SqlServer.2022

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2025 SqlServer.2022

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

-- SqlServer.2025 SqlServer.2022

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

-- SqlServer.2025 SqlServer.2022

DROP TABLE [DropTableTestID]

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]


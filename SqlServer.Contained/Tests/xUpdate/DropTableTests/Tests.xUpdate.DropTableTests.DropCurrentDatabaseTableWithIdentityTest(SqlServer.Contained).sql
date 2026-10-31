-- SqlServer.Contained SqlServer.2025
DROP TABLE IF EXISTS [DropTableTestID]

-- SqlServer.Contained SqlServer.2025
CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.Contained SqlServer.2025
INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

-- SqlServer.Contained SqlServer.2025
SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

-- SqlServer.Contained SqlServer.2025
DROP TABLE [DropTableTestID]

-- SqlServer.Contained SqlServer.2025
SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]


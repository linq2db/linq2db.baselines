-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [DropTableTestID]

-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2019.MS SqlServer.2019

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE [DropTableTestID]

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]


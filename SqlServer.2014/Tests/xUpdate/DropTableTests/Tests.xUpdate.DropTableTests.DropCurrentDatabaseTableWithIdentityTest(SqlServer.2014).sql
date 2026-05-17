-- SqlServer.2014

IF (OBJECT_ID(N'[DropTableTestID]', N'U') IS NOT NULL)
	DROP TABLE [DropTableTestID]

-- SqlServer.2014

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2014

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

-- SqlServer.2014

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

-- SqlServer.2014

DROP TABLE [DropTableTestID]

-- SqlServer.2014

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]


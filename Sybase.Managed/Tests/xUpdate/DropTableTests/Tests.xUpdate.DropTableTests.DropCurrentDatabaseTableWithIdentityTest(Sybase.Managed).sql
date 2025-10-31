-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DropTableTestID') IS NOT NULL)
	DROP TABLE [DropTableTestID]

-- Sybase.Managed Sybase

CREATE TABLE [DropTableTestID]
(
	[ID]  Int IDENTITY NOT NULL,
	[ID1] Int          NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

-- Sybase.Managed Sybase

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

-- Sybase.Managed Sybase

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

-- Sybase.Managed Sybase

DROP TABLE [DropTableTestID]

-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]


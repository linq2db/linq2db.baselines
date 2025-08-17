BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'DropTableTestID') IS NOT NULL)
	DROP TABLE [DropTableTestID]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

CREATE TABLE [DropTableTestID]
(
	[ID]  Int IDENTITY NOT NULL,
	[ID1] Int          NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DROP TABLE [DropTableTestID]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]


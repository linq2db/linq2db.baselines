BeforeExecute
-- SqlServer.2005 (asynchronously)

IF (OBJECT_ID(N'[DropTableTestID]', N'U') IS NOT NULL)
	DROP TABLE [DropTableTestID]

BeforeExecute
-- SqlServer.2005 (asynchronously)

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2005 (asynchronously)

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

BeforeExecute
-- SqlServer.2005 (asynchronously)

DROP TABLE [DropTableTestID]

BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]


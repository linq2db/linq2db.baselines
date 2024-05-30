BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[DropTableTestID]', N'U') IS NOT NULL)
	DROP TABLE [DropTableTestID]

BeforeExecute
-- SqlServer.2012

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2012

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

BeforeExecute
-- SqlServer.2012

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

BeforeExecute
-- SqlServer.2012

DROP TABLE [DropTableTestID]

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]


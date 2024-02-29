BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [DropTableTestID]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE [DropTableTestID]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]


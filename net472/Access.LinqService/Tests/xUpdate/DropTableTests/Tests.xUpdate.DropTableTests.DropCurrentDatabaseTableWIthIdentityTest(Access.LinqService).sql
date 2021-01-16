BeforeExecute
-- Access AccessOleDb

DROP TABLE [DropTableTestID]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [DropTableTestID]

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]


BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [DropTableTestID]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [DropTableTestID]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]


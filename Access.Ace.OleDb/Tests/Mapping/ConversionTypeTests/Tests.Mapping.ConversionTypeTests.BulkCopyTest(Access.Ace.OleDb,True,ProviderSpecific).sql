BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TrimTestTable]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [TrimTestTable]
(
	[ID]   Int          NOT NULL,
	[Data] NVarChar(50)     NULL,

	CONSTRAINT [PK_TrimTestTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	1,
	'***OOO***'
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TrimTestTable]


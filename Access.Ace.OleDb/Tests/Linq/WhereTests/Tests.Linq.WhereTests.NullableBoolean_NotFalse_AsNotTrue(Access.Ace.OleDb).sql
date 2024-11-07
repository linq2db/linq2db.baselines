BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [NullableBool]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [NullableBool]
(
	[ID]   Int NOT NULL,
	[Bool] Bit     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[r].[ID],
	[r].[Bool]
FROM
	[NullableBool] [r]
WHERE
	[r].[Bool] = True OR [r].[Bool] IS NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [NullableBool]


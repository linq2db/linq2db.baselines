BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [NullableBool]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [NullableBool]
(
	[ID]   Int NOT NULL,
	[Bool] Bit     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[r].[ID],
	[r].[Bool]
FROM
	[NullableBool] [r]
WHERE
	[r].[Bool] = True OR [r].[Bool] IS NULL

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [NullableBool]


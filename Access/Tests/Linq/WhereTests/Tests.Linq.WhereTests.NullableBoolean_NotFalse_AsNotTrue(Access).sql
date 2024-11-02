BeforeExecute
-- Access AccessOleDb

DROP TABLE [NullableBool]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [NullableBool]
(
	[ID]   Int NOT NULL,
	[Bool] Bit     NULL
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[ID],
	[r].[Bool]
FROM
	[NullableBool] [r]
WHERE
	[r].[Bool] = True OR [r].[Bool] IS NULL

BeforeExecute
-- Access AccessOleDb

DROP TABLE [NullableBool]


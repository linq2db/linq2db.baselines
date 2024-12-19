BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [NullableBool]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [NullableBool]
(
	[ID]   Int NOT NULL,
	[Bool] Bit     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[r].[ID],
	[r].[Bool]
FROM
	[NullableBool] [r]
WHERE
	[r].[Bool] = True OR [r].[Bool] IS NULL

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [NullableBool]


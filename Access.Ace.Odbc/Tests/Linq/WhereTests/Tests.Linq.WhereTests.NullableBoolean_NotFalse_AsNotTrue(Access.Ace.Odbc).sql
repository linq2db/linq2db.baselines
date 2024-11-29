BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [NullableBool]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [NullableBool]
(
	[ID]   Int NOT NULL,
	[Bool] Bit     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[ID],
	[r].[Bool]
FROM
	[NullableBool] [r]
WHERE
	[r].[Bool] = True OR [r].[Bool] IS NULL

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [NullableBool]


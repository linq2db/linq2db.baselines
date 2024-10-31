BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [NullableBool]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [NullableBool]
(
	[ID]   Int NOT NULL,
	[Bool] Bit     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[r].[ID],
	[r].[Bool]
FROM
	[NullableBool] [r]
WHERE
	[r].[Bool] = True OR [r].[Bool] IS NULL

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [NullableBool]


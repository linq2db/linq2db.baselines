BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Entry]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Entry]
(
	[Id]     Guid          NOT NULL,
	[RecSrc] NVarChar(255)     NULL,
	[Value]  Int           NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[e].[Id],
	[e].[RecSrc],
	[e].[Value]
FROM
	[Entry] [e]
WHERE
	[e].[RecSrc] = 'default' AND [e].[Value] = 2007

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Entry]


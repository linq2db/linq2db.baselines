BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Entry]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Entry]
(
	[Id]     Guid          NOT NULL,
	[RecSrc] NVarChar(255)     NULL,
	[Value]  Int           NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[e].[Id],
	[e].[RecSrc],
	[e].[Value]
FROM
	[Entry] [e]
WHERE
	[e].[RecSrc] = 'default' AND [e].[Value] = 2007

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Entry]


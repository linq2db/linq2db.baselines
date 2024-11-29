BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue1189Customer]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue1189Customer]
(
	[ID]   Int           NOT NULL,
	[NAME] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue1189Customer] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @DateTime DateTime
SET     @DateTime = #2020-02-29 17:54:55#

SELECT
	[k_1].[ID],
	[k_1].[NAME],
	CVar(?)
FROM
	[Issue1189Customer] [k_1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue1189Customer]


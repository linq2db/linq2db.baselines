BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue1189Customer]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue1189Customer]
(
	[ID]   Int           NOT NULL,
	[NAME] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue1189Customer] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @DateTime Date -- DateTime
SET     @DateTime = #2020-02-29 17:54:55#

SELECT
	[k_1].[ID],
	[k_1].[NAME],
	CVar(@DateTime)
FROM
	[Issue1189Customer] [k_1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue1189Customer]


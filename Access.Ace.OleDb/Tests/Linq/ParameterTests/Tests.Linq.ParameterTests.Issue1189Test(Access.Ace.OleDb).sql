﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue1189Customer]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue1189Customer]
(
	[ID]   Int           NOT NULL,
	[NAME] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue1189Customer] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @value Date -- DateTime
SET     @value = #2020-02-29 17:54:55#

SELECT
	[k_1].[ID],
	[k_1].[NAME],
	@value
FROM
	[Issue1189Customer] [k_1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue1189Customer]


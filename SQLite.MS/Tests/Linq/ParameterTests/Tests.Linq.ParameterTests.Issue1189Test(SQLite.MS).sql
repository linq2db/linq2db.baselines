BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1189Customer]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue1189Customer]
(
	[ID]   INTEGER       NOT NULL,
	[NAME] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue1189Customer] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[k_1].[ID],
	[k_1].[NAME],
	'2020-02-29 17:54:55.123'
FROM
	[Issue1189Customer] [k_1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1189Customer]


BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1189Customer]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1189Customer]
(
	[ID]   INTEGER       NOT NULL,
	[NAME] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue1189Customer] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @DateTime VarChar(23) -- AnsiString
SET     @DateTime = '2020-02-29 17:54:55.123'

SELECT
	[k_1].[ID],
	[k_1].[NAME],
	@DateTime
FROM
	[Issue1189Customer] [k_1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1189Customer]


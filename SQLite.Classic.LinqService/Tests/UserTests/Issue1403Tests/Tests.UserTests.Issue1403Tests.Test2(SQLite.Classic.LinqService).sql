BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1403Tests_2]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1403Tests_2]
(
	[event_id]          INTEGER       NOT NULL,
	[event_description] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue1403Tests_2] PRIMARY KEY ([event_id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Issue1403Tests_2]
(
	[event_id],
	[event_description]
)
VALUES
(
	1,
	'New event'
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[event_id],
	[t1].[event_description]
FROM
	[Issue1403Tests_2] [t1]
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1403Tests_2]


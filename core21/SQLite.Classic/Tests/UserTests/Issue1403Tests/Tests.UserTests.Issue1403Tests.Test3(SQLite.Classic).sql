BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Issue1403Tests_3]
(
	[event_description] NVarChar(255) NOT NULL,
	[event_id]          INTEGER       NOT NULL,

	CONSTRAINT [PK_Issue1403Tests_3] PRIMARY KEY ([event_id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Issue1403Tests_3]
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
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t1].[event_description],
	[t1].[event_id]
FROM
	[Issue1403Tests_3] [t1]
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Issue1403Tests_3]


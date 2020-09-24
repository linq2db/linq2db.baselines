﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Issue1403Tests_2]
(
	[event_id]          INTEGER       NOT NULL,
	[event_description] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue1403Tests_2] PRIMARY KEY ([event_id])
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t1].[event_id],
	[t1].[event_description]
FROM
	[Issue1403Tests_2] [t1]
LIMIT @take

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Issue1403Tests_2]


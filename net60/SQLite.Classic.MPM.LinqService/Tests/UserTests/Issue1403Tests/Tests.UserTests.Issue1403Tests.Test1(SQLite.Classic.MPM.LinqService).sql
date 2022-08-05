﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [Issue1403Tests_1]
(
	[event_id]          INTEGER       NOT NULL,
	[event_description] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue1403Tests_1] PRIMARY KEY ([event_id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Issue1403Tests_1]
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[event_description],
	[t1].[event_id]
FROM
	[Issue1403Tests_1] [t1]
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1403Tests_1]


BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

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
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[event_id],
	[t1].[event_description]
FROM
	[Issue1403Tests_3] [t1]
LIMIT 1


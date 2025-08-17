BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

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
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[event_id],
	[t1].[event_description]
FROM
	[Issue1403Tests_1] [t1]
LIMIT 1


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

-- SQLite.MS SQLite

SELECT
	[t1].[event_id],
	[t1].[event_description]
FROM
	[Issue1403Tests_2] [t1]
LIMIT 1


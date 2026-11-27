-- SQLite.Classic SQLite
INSERT INTO [OrderedColumnsRecord]
(
	[event_id],
	[event_description]
)
VALUES
(
	1,
	'New event'
)

-- SQLite.Classic SQLite
SELECT
	[t1].[event_id],
	[t1].[event_description]
FROM
	[OrderedColumnsRecord] [t1]
LIMIT 1


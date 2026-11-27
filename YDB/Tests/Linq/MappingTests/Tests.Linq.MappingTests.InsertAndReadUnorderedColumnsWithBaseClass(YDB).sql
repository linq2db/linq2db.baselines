-- YDB Ydb
INSERT INTO UnorderedColumnsDerivedRecord
(
	event_id,
	event_description
)
VALUES
(
	1,
	'New event'u
)

-- YDB Ydb
SELECT
	t1.event_id as event_id,
	t1.event_description as event_description
FROM
	UnorderedColumnsDerivedRecord t1
LIMIT 1


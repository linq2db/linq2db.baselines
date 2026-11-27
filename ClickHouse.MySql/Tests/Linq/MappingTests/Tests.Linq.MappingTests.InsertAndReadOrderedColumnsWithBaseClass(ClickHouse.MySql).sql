-- ClickHouse.MySql ClickHouse
INSERT INTO OrderedColumnsDerivedRecord
(
	event_id,
	event_description
)
VALUES
(
	1,
	'New event'
)

-- ClickHouse.MySql ClickHouse
SELECT
	t1.event_id,
	t1.event_description
FROM
	OrderedColumnsDerivedRecord t1
LIMIT 1


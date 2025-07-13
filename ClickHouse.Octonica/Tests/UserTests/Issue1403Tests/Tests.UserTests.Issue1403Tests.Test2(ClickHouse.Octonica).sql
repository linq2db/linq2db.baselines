BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue1403Tests_2
(
	event_id,
	event_description
)
VALUES
(
	1,
	'New event'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.event_id,
	t1.event_description
FROM
	Issue1403Tests_2 t1
LIMIT 1


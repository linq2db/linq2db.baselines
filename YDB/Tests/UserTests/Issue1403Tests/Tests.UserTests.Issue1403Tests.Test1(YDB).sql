-- YDB Ydb

INSERT INTO Issue1403Tests_1
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
	t1.event_id as EventId,
	t1.event_description as EventDescription
FROM
	Issue1403Tests_1 t1
LIMIT 1


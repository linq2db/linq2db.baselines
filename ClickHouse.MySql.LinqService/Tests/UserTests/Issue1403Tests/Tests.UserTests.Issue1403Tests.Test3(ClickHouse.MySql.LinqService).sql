﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue1403Tests_3
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
-- ClickHouse.MySql ClickHouse

SELECT
	t1.event_id,
	t1.event_description
FROM
	Issue1403Tests_3 t1
LIMIT 1


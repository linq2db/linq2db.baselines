﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue1403Tests_2

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue1403Tests_2
(
	event_id          Int32,
	event_description String,

	PRIMARY KEY (event_id)
)
ENGINE = MergeTree()
ORDER BY event_id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue1403Tests_2
(
	event_id,
	event_description
)
VALUES
(
	toInt32(1),
	'New event'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.event_id,
	t1.event_description
FROM
	Issue1403Tests_2 t1
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue1403Tests_2


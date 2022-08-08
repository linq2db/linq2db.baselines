BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue1403Tests_3

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue1403Tests_3
(
	event_description String,
	event_id          Int32,

	 PRIMARY KEY (event_id)
)
ENGINE = MergeTree()
ORDER BY event_id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Issue1403Tests_3
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
	t1.event_description,
	t1.event_id
FROM
	Issue1403Tests_3 t1
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue1403Tests_3


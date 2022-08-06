﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue1403Tests_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue1403Tests_1
(
	event_id          Int32,
	event_description String,

	 PRIMARY KEY (event_id)
)
ENGINE = MergeTree()
ORDER BY event_id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Issue1403Tests_1
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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.event_description,
	t1.event_id
FROM
	Issue1403Tests_1 t1
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue1403Tests_1


﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ValueItem

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS ValueItem
(
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO ValueItem
(
	Value
)
VALUES
(
	toInt32(123)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	row_1.Value
FROM
	ValueItem row_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS ValueItem


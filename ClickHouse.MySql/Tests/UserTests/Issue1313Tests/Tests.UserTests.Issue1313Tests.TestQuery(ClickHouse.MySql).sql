BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ValueItem

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS ValueItem
(
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO ValueItem
(
	Value
)
VALUES
(
	123
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	row_1.Value
FROM
	ValueItem row_1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ValueItem


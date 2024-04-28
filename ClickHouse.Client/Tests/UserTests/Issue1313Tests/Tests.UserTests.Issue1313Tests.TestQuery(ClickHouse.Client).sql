BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ValueItem

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ValueItem
(
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO ValueItem
(
	Value
)
VALUES
(
	123
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	row_1.Value
FROM
	ValueItem row_1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ValueItem


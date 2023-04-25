BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS table1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS table1
(
	id            Int32,
	id_tbl2       Nullable(Int32),
	id_tbl3       Nullable(Int32),
	commonTableId Int32,
	c_tb1l_Id     Nullable(Int32),

	PRIMARY KEY (id)
)
ENGINE = MergeTree()
ORDER BY id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS table2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS table2
(
	id      Int32,
	textCol Nullable(String),
	col3    Nullable(Int32),

	PRIMARY KEY (id)
)
ENGINE = MergeTree()
ORDER BY id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS table3

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS table3
(
	id  Int32,
	col Nullable(Int32),

	PRIMARY KEY (id)
)
ENGINE = MergeTree()
ORDER BY id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	allB.id
FROM
	table1 allB

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS table3

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS table2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS table1


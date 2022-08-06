BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS AsyncDataTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS AsyncDataTable
(
	Id Int32,

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO AsyncDataTable
(
	Id
)
VALUES
(
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO AsyncDataTable
(
	Id
)
VALUES
(
	toInt32(2)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO AsyncDataTable
(
	Id
)
VALUES
(
	toInt32(3)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO AsyncDataTable
(
	Id
)
VALUES
(
	toInt32(4)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO AsyncDataTable
(
	Id
)
VALUES
(
	toInt32(5)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO AsyncDataTable
(
	Id
)
VALUES
(
	toInt32(6)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO AsyncDataTable
(
	Id
)
VALUES
(
	toInt32(7)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO AsyncDataTable
(
	Id
)
VALUES
(
	toInt32(8)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO AsyncDataTable
(
	Id
)
VALUES
(
	toInt32(9)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO AsyncDataTable
(
	Id
)
VALUES
(
	toInt32(10)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS AsyncDataTable


BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS A

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS A
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS B

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS B
(
	Id  Int32,
	AId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS C

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS C
(
	Id  Int32,
	BId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO A
(
	Id
)
VALUES
(
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	a_1.Id,
	t1.bc,
	t1.bid,
	t1.cid
FROM
	A a_1
		LEFT JOIN (
			SELECT
				b_1.AId as bc,
				b_1.Id as bid,
				c_1.Id as cid
			FROM
				B b_1
					INNER JOIN C c_1 ON b_1.Id = c_1.BId
		) t1 ON a_1.Id = t1.bc

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS C

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS B

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS A


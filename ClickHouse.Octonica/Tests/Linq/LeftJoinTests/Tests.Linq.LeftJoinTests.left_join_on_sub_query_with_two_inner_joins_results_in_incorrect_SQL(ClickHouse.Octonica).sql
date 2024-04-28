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
	1
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t2.Id,
	t1.AId,
	t1.Id,
	t1.Id_1
FROM
	A t2
		LEFT JOIN (
			SELECT
				bc.AId as AId,
				bc.Id as Id,
				c_1.Id as Id_1
			FROM
				B bc
					INNER JOIN C c_1 ON bc.Id = c_1.BId
		) t1 ON t2.Id = t1.AId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS C

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS B

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS A


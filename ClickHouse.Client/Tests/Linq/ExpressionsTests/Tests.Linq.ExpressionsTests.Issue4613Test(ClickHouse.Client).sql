BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4613Service

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4613Service
(
	IdContract Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4613Contract

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4613Contract
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	contract.Id,
	servProj.IdContract
FROM
	Issue4613Service servProj
		INNER JOIN Issue4613Contract contract ON servProj.IdContract = contract.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4613Contract

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4613Service


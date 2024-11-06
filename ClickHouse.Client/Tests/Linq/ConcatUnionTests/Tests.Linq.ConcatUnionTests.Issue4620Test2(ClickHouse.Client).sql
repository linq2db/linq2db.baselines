BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4620Table

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4620Table
(
	Id         Int32,
	IdContract Nullable(Int32),
	IdClient   Nullable(Int32),
	Sum        Decimal128(10)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue4620Table
(
	Id,
	IdContract,
	IdClient,
	Sum
)
VALUES
(1,NULL,1,toDecimal128('0', 10)),
(2,2,NULL,toDecimal128('0', 10)),
(3,NULL,NULL,toDecimal128('0', 10)),
(4,2,1,toDecimal128('0', 10))

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4620Client

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4620Client
(
	Id   Int32,
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue4620Client
(
	Id,
	Name
)
VALUES
(1,'Client 1'),
(2,'Client 2')

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4620Contract

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue4620Contract
(
	Id       Int32,
	IdClient Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue4620Contract
(
	Id,
	IdClient
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Name
FROM
	(
		SELECT
			b.Id as Id,
			a_Client.Name as Name
		FROM
			Issue4620Table b
				INNER JOIN Issue4620Client a_Client ON b.IdClient = a_Client.Id
		WHERE
			b.IdClient IS NOT NULL
		UNION ALL
		SELECT
			b_1.Id as Id,
			a_Client_1.Name as Name
		FROM
			Issue4620Table b_1
				INNER JOIN Issue4620Contract a_Contract ON b_1.IdContract = a_Contract.Id
				INNER JOIN Issue4620Client a_Client_1 ON a_Contract.IdClient = a_Client_1.Id
		WHERE
			b_1.IdContract IS NOT NULL
	) t1
ORDER BY
	t1.Id,
	t1.Name

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4620Contract

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4620Client

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue4620Table


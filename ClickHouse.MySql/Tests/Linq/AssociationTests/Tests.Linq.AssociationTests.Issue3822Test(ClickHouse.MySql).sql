BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Dog

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Dog
(
	Id      Int32,
	OwnerId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Dog
(
	Id,
	OwnerId
)
VALUES
(1,1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Human

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Human
(
	Id      Int32,
	HouseId Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Human
(
	Id,
	HouseId
)
VALUES
(1,1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS House

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS House
(
	Id Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO House
(
	Id
)
VALUES
(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Window

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Window
(
	Id       Int32,
	Position Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Window
(
	Id,
	Position
)
VALUES
(6,6)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id
FROM
	Dog x
		INNER JOIN Human a_Owner ON x.OwnerId = a_Owner.Id
		INNER JOIN House a_House ON a_Owner.HouseId = a_House.Id
		LEFT JOIN (
			SELECT
				a_WindowAtPosition.Id as Id
			FROM
				Window a_WindowAtPosition
			WHERE
				a_WindowAtPosition.Position = 6
			LIMIT 1
		) t1 ON 1=1
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Window

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS House

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Human

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Dog


BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS User

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS User
(
	city            Nullable(String),
	user_name       Nullable(String),
	street          Nullable(String),
	building_number Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	u.city
FROM
	User u

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	u.street
FROM
	User u

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS User


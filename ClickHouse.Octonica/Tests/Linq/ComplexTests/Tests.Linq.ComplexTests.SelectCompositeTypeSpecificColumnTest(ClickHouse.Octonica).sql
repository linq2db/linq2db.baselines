BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS User

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS User
(
	city            Nullable(String),
	user_name       Nullable(String),
	street          Nullable(String),
	building_number Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	u.city
FROM
	User u

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	u.street
FROM
	User u

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS User


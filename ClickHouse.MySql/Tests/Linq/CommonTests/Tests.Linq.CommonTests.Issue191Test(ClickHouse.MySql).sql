BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS User

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS User
(
	FirstName Nullable(String),
	Status    Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	user_1.FirstName,
	user_1.Status
FROM
	User user_1
WHERE
	user_1.Status IS NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS User


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

INSERT INTO User
(
	city,
	user_name,
	street,
	building_number
)
VALUES
(
	'Springwood',
	'Freddy',
	'Elm Street',
	13
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	u.user_name,
	u.city,
	u.street,
	u.building_number
FROM
	User u
WHERE
	u.city = 'Springwood' AND
	u.city IS NOT NULL AND
	u.street = 'Elm Street' AND
	u.street IS NOT NULL AND
	u.building_number = 13
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS User


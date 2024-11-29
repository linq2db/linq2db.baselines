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
-- ClickHouse.Octonica ClickHouse

SELECT
	u.user_name,
	u.city,
	u.street,
	u.building_number
FROM
	User u
WHERE
	u.city = 'Springwood' AND u.street = 'Elm Street' AND
	u.building_number = 13
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS User


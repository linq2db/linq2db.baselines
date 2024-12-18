BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS UserStruct

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS UserStruct
(
	city            Nullable(String),
	user_name       Nullable(String),
	street          Nullable(String),
	building_number Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO UserStruct
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
-- ClickHouse.Client ClickHouse

SELECT
	u.user_name,
	u.city,
	u.street,
	u.building_number
FROM
	UserStruct u
WHERE
	u.city = 'Springwood' AND
	u.city IS NOT NULL AND
	u.street = 'Elm Street' AND
	u.street IS NOT NULL AND
	u.building_number = 13
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS UserStruct


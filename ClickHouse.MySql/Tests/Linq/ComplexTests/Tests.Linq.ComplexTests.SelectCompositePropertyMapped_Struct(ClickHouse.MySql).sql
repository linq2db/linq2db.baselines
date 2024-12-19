BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS UserStruct

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS UserStruct
(
	city            Nullable(String),
	user_name       Nullable(String),
	street          Nullable(String),
	building_number Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO UserStruct
(
	city,
	user_name,
	street,
	building_number
)
VALUES
('Springwood','Freddy','Elm Street',13)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT DISTINCT
	u.city,
	u.street,
	u.building_number
FROM
	UserStruct u
LIMIT 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS UserStruct


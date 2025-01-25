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
('Springwood','Freddy','Elm Street',13)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.user_name,
	t1.city,
	t1.street,
	t1.building_number
FROM
	User t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS User


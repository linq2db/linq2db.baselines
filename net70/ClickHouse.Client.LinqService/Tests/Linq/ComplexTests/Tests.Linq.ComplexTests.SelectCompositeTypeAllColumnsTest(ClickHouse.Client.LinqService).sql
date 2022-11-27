﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS User

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS User
(
	city            Nullable(String),
	user_name       Nullable(String),
	street          Nullable(String),
	building_number Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

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
	toInt32(13)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.city,
	t1.user_name,
	t1.street,
	t1.building_number
FROM
	User t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS User


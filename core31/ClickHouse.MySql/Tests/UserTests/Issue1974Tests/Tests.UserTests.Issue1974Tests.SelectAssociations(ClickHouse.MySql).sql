﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Person1974

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Person1974
(
	ID   Int32,
	Name Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Person1974
(
	ID,
	Name
)
VALUES
(toInt32(1),'Person1'),
(toInt32(2),'Person2')

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Article

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Article
(
	ID       Nullable(String),
	PersonId Int32,
	Price    Float64
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Article
(
	ID,
	PersonId,
	Price
)
VALUES
('Article',toInt32(2),toFloat64(0))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.Name,
	a_Bought.ID,
	a_Bought.PersonId,
	a_Bought.Price,
	a.ID,
	a.PersonId,
	a.Price
FROM
	Person1974 t1
		LEFT JOIN Article a_Bought ON t1.ID = a_Bought.PersonId
		LEFT JOIN Article a ON a.PersonId = t1.ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Article

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Person1974


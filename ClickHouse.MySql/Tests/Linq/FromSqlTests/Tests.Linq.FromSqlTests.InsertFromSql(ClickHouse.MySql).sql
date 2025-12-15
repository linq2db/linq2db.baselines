-- ClickHouse.MySql ClickHouse

CREATE TEMPORARY TABLE Projection2
(
	i Int32
)
ENGINE = Memory()

-- ClickHouse.MySql ClickHouse

INSERT INTO Projection2
(
	i
)
SELECT
	t1.i1
FROM
	(with Rows as (select 1 as i1, 2 as i2) select * from Rows) t1

-- ClickHouse.MySql ClickHouse

SELECT
	t1.i
FROM
	Projection2 t1
LIMIT 2

-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Projection2


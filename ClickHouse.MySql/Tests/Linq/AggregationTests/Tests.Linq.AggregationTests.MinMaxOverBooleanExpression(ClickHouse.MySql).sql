-- ClickHouse.MySql ClickHouse
SELECT
	maxOrNull(t1.Id = 2)
FROM
	Item t1

-- ClickHouse.MySql ClickHouse
SELECT
	minOrNull(t1.Id = 2)
FROM
	Item t1

-- ClickHouse.MySql ClickHouse
SELECT
	maxOrNull(t1.Id = 2)
FROM
	Item t1

-- ClickHouse.MySql ClickHouse
SELECT
	minOrNull(t1.Id = 2)
FROM
	Item t1

-- ClickHouse.MySql ClickHouse
SELECT
	maxOrNull(CASE
		WHEN t1.Id = 2 THEN true
		ELSE t1.Id > 1
	END)
FROM
	Item t1

-- ClickHouse.MySql ClickHouse
SELECT
	minOrNull(CASE
		WHEN t1.Id = 2 THEN true
		ELSE t1.Id > 1
	END)
FROM
	Item t1


-- ClickHouse.Octonica ClickHouse
SELECT
	maxOrNull(CASE
		WHEN t1.Id = 2 THEN 1
		ELSE 0
	END)
FROM
	Item t1

-- ClickHouse.Octonica ClickHouse
SELECT
	minOrNull(CASE
		WHEN t1.Id = 2 THEN 1
		ELSE 0
	END)
FROM
	Item t1

-- ClickHouse.Octonica ClickHouse
SELECT
	maxOrNull(CASE
		WHEN t1.Id = 2 THEN 1
		ELSE 0
	END)
FROM
	Item t1

-- ClickHouse.Octonica ClickHouse
SELECT
	minOrNull(CASE
		WHEN t1.Id = 2 THEN 1
		ELSE 0
	END)
FROM
	Item t1

-- ClickHouse.Octonica ClickHouse
SELECT
	maxOrNull(CASE
		WHEN CASE
			WHEN t1.Id = 2 THEN true
			ELSE t1.Id > 1
		END
			THEN 1
		ELSE 0
	END)
FROM
	Item t1

-- ClickHouse.Octonica ClickHouse
SELECT
	minOrNull(CASE
		WHEN CASE
			WHEN t1.Id = 2 THEN true
			ELSE t1.Id > 1
		END
			THEN 1
		ELSE 0
	END)
FROM
	Item t1


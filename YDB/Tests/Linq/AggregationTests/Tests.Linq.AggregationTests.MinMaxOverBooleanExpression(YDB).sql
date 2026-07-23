-- YDB Ydb
SELECT
	MAX(CASE
		WHEN t1.Id = 2 THEN 1
		ELSE 0
	END) as Max_1
FROM
	Item t1

-- YDB Ydb
SELECT
	MIN(CASE
		WHEN t1.Id = 2 THEN 1
		ELSE 0
	END) as Min_1
FROM
	Item t1

-- YDB Ydb
SELECT
	MAX(CASE
		WHEN t1.Id = 2 THEN 1
		ELSE 0
	END) as Max_1
FROM
	Item t1

-- YDB Ydb
SELECT
	MIN(CASE
		WHEN t1.Id = 2 THEN 1
		ELSE 0
	END) as Min_1
FROM
	Item t1

-- YDB Ydb
SELECT
	MAX(CASE
		WHEN CASE
			WHEN t1.Id = 2 THEN true
			ELSE t1.Id > 1
		END
			THEN 1
		ELSE 0
	END) as Max_1
FROM
	Item t1

-- YDB Ydb
SELECT
	MIN(CASE
		WHEN CASE
			WHEN t1.Id = 2 THEN true
			ELSE t1.Id > 1
		END
			THEN 1
		ELSE 0
	END) as Min_1
FROM
	Item t1


-- DuckDB
INSERT INTO InheritanceFilter AS t1
(
	Id,
	Code,
	Child1Field
)
VALUES
(
	1,
	1,
	55
)
ON CONFLICT (Id) DO UPDATE SET
	Child1Field = 66

-- DuckDB
SELECT
	t1.Id,
	t1.Code,
	t1.Child1Field
FROM
	InheritanceFilter t1
WHERE
	t1.Code IN (12, 11, 1)
LIMIT 2

-- DuckDB
INSERT INTO InheritanceFilter AS t1
(
	Id,
	Code,
	Child1Field
)
VALUES
(
	1,
	1,
	55
)
ON CONFLICT (Id) DO UPDATE SET
	Child1Field = 66

-- DuckDB
SELECT
	t1.Id,
	t1.Code,
	t1.Child1Field
FROM
	InheritanceFilter t1
WHERE
	t1.Code IN (12, 11, 1)
LIMIT 2


-- ClickHouse.MySql ClickHouse
ALTER TABLE
	TestBool
UPDATE
	Value = Value = false OR Value IS NULL
WHERE 1

-- ClickHouse.MySql ClickHouse
SELECT
	r.Value
FROM
	TestBool r
ORDER BY
	r.Id


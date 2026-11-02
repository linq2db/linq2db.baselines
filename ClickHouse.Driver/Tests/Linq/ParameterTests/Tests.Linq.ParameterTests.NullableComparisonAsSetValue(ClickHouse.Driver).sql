-- ClickHouse.Driver ClickHouse
ALTER TABLE
	TestBool
UPDATE
	Value = Value = false OR Value IS NULL
WHERE 1

-- ClickHouse.Driver ClickHouse
SELECT
	r.Value
FROM
	TestBool r
ORDER BY
	r.Id


-- ClickHouse.MySql ClickHouse
ALTER TABLE
	TestBool
UPDATE
	Value = CASE
		WHEN Value = false OR Value IS NULL THEN true
		ELSE false
	END
WHERE 1

-- ClickHouse.MySql ClickHouse
SELECT
	r.Value
FROM
	TestBool r
ORDER BY
	r.Id


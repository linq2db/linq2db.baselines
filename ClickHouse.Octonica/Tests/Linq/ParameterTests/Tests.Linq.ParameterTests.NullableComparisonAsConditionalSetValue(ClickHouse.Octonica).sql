-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	TestBool
UPDATE
	Value = CASE
		WHEN Id > 0 THEN Value = false OR Value IS NULL
		ELSE NULL
	END
WHERE 1

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Value
FROM
	TestBool r
ORDER BY
	r.Id


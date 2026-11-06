-- ClickHouse.MySql ClickHouse
ALTER TABLE
	SetFlagTable
UPDATE
	F = CASE
		WHEN C IS NULL THEN F
		WHEN A = B OR A IS NULL AND B IS NULL THEN true
		ELSE false
	END
WHERE 1

-- ClickHouse.MySql ClickHouse
SELECT
	r.F
FROM
	SetFlagTable r
ORDER BY
	r.Id


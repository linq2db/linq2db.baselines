BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN lengthUTF8(p.FirstName) <> 0 THEN p.FirstName
		WHEN NOT (p.MiddleName IS NULL OR lengthUTF8(p.MiddleName) = 0 AND p.MiddleName IS NOT NULL)
			THEN p.MiddleName
		ELSE p.LastName
	END
FROM
	Person p


BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	CASE
		WHEN lengthUTF8(p.FirstName) <> 0 THEN p.FirstName
		WHEN NOT (p.MiddleName IS NULL OR lengthUTF8(p.MiddleName) = 0)
			THEN p.MiddleName
		ELSE p.LastName
	END
FROM
	Person p


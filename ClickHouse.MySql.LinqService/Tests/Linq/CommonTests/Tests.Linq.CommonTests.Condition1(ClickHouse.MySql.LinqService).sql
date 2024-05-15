BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN p.FirstName IS NULL OR CHAR_LENGTH(p.FirstName) = 0
			THEN true
		ELSE false
	END,
	p.FirstName,
	CASE
		WHEN p.MiddleName IS NULL OR CHAR_LENGTH(p.MiddleName) = 0
			THEN true
		ELSE false
	END,
	p.MiddleName,
	p.LastName
FROM
	Person p


BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN CHAR_LENGTH(p.FirstName) = 0 THEN true
		ELSE false
	END
FROM
	Person p
WHERE
	p.PersonID = 1


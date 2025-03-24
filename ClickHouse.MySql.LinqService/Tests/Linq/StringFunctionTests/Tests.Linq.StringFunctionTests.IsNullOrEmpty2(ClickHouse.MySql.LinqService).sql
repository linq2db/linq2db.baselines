BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	CHAR_LENGTH(p.FirstName) = 0
FROM
	Person p
WHERE
	p.PersonID = 1


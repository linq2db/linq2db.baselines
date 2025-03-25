BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CHAR_LENGTH(p.FirstName) + CHAR_LENGTH('')
FROM
	Person p


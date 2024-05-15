BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN p.FirstName IS NULL OR CHAR_LENGTH(p.FirstName) = 0
			THEN true
		ELSE false
	END
FROM
	Person p
WHERE
	p.PersonID = 1


BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	CASE
		WHEN CASE
			WHEN p.FirstName IS NULL THEN NULL
			ELSE startsWith(p.FirstName, 'Jo')
		END IS NULL
			THEN false
		WHEN p.FirstName IS NULL THEN NULL
		ELSE startsWith(p.FirstName, 'Jo')
	END = true


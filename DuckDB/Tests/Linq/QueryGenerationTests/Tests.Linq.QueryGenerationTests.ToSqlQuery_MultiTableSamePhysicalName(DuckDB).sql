-- DuckDB

SELECT
	p.PersonID,
	d.PersonID
FROM
	Person p
		INNER JOIN Doctor d ON p.PersonID = d.PersonID

-- DuckDB

SELECT
	p.PersonID,
	d.PersonID
FROM
	Person p
		INNER JOIN Doctor d ON p.PersonID = d.PersonID


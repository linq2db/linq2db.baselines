-- DuckDB
SELECT
	CASE
		WHEN Position('r' in Substring(Left(p.LastName, 7), 3)) = 0
			THEN 0
		ELSE Position('r' in Substring(Left(p.LastName, 7), 3)) + 2
	END - 1
FROM
	Person p
WHERE
	p.PersonID = 2

-- DuckDB
SELECT
	CASE
		WHEN Position('n' in Substring(Left(p.LastName, 5), 3)) = 0
			THEN 0
		ELSE Position('n' in Substring(Left(p.LastName, 5), 3)) + 2
	END - 1
FROM
	Person p
WHERE
	p.PersonID = 2

-- DuckDB
SELECT
	CASE
		WHEN Position('o' in Substring(Left(p.LastName, 7), 3)) = 0
			THEN 0
		ELSE Position('o' in Substring(Left(p.LastName, 7), 3)) + 2
	END - 1
FROM
	Person p
WHERE
	p.PersonID = 2

-- DuckDB
SELECT
	CASE
		WHEN Position('o' in Substring(Left(p.LastName, 8), 3)) = 0
			THEN 0
		ELSE Position('o' in Substring(Left(p.LastName, 8), 3)) + 2
	END - 1
FROM
	Person p
WHERE
	p.PersonID = 2

-- DuckDB
SELECT
	CASE
		WHEN Position('r' in Substring(Left(p.LastName, 7), 3)) = 0
			THEN 0
		ELSE Position('r' in Substring(Left(p.LastName, 7), 3)) + 2
	END - 1
FROM
	Person p
WHERE
	p.PersonID = 2

-- DuckDB
SELECT
	CASE
		WHEN Position('o' in Substring(Left(p.LastName, 7), 3)) = 0
			THEN 0
		ELSE Position('o' in Substring(Left(p.LastName, 7), 3)) + 2
	END - 1
FROM
	Person p
WHERE
	p.PersonID = 2

-- DuckDB
SELECT
	CASE
		WHEN Position('o' in Substring(Left(p.LastName, 8), 3)) = 0
			THEN 0
		ELSE Position('o' in Substring(Left(p.LastName, 8), 3)) + 2
	END - 1
FROM
	Person p
WHERE
	p.PersonID = 2


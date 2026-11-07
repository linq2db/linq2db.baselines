-- DuckDB
DECLARE $values NVarChar(1) -- String
SET     $values = 'a'

SELECT
	$values
FROM
	Person p
WHERE
	p.PersonID = 1

-- DuckDB
DECLARE $values NVarChar(1) -- String
SET     $values = 'b'

SELECT
	$values
FROM
	Person p
WHERE
	p.PersonID = 1

-- DuckDB
DECLARE $values NVarChar(1) -- String
SET     $values = 'a'

SELECT
	$values
FROM
	Person p
WHERE
	p.PersonID = 1

-- DuckDB
DECLARE $values NVarChar(1) -- String
SET     $values = 'b'

SELECT
	$values
FROM
	Person p
WHERE
	p.PersonID = 1


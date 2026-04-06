-- DuckDB
DECLARE $paramCopy  -- Int32
SET     $paramCopy = 1
DECLARE $p  -- Int32
SET     $p = 0
DECLARE $p_1  -- Int32
SET     $p_1 = 2

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			p.PersonID
		FROM
			Person p
		WHERE
			p.PersonID = CAST($paramCopy AS INTEGER)
	) AND
	(t1.PersonID IN (
		SELECT
			p_1.PersonID
		FROM
			Person p_1
		WHERE
			p_1.PersonID = CAST($p AS INTEGER)
	) OR t1.PersonID IN (
		SELECT
			p_2.PersonID
		FROM
			Person p_2
		WHERE
			CAST($p_1 AS INTEGER) <> p_2.PersonID
	))

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 3
DECLARE $paramCopy  -- Int32
SET     $paramCopy = 2
DECLARE $p_1  -- Int32
SET     $p_1 = 3

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			p.PersonID
		FROM
			Person p
		WHERE
			CAST($p AS INTEGER) <> p.PersonID
	) AND
	(t1.PersonID IN (
		SELECT
			p_1.PersonID
		FROM
			Person p_1
		WHERE
			CAST($paramCopy AS INTEGER) = p_1.PersonID
	) OR t1.PersonID IN (
		SELECT
			p_2.PersonID
		FROM
			Person p_2
		WHERE
			CAST($p_1 AS INTEGER) <> p_2.PersonID
	))

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 4
DECLARE $p_1  -- Int32
SET     $p_1 = 2
DECLARE $paramCopy  -- Int32
SET     $paramCopy = 3

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			p.PersonID
		FROM
			Person p
		WHERE
			CAST($p AS INTEGER) <> p.PersonID
	) AND
	(t1.PersonID IN (
		SELECT
			p_1.PersonID
		FROM
			Person p_1
		WHERE
			p_1.PersonID = CAST($p_1 AS INTEGER)
	) OR t1.PersonID IN (
		SELECT
			p_2.PersonID
		FROM
			Person p_2
		WHERE
			p_2.PersonID = CAST($paramCopy AS INTEGER)
	))

-- DuckDB
DECLARE $paramCopy  -- Int32
SET     $paramCopy = 1
DECLARE $p  -- Int32
SET     $p = 0
DECLARE $p_1  -- Int32
SET     $p_1 = 2

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			p.PersonID
		FROM
			Person p
		WHERE
			p.PersonID = CAST($paramCopy AS INTEGER)
	) AND
	(t1.PersonID IN (
		SELECT
			p_1.PersonID
		FROM
			Person p_1
		WHERE
			p_1.PersonID = CAST($p AS INTEGER)
	) OR t1.PersonID IN (
		SELECT
			p_2.PersonID
		FROM
			Person p_2
		WHERE
			CAST($p_1 AS INTEGER) <> p_2.PersonID
	))

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 4
DECLARE $p_1  -- Int32
SET     $p_1 = 2
DECLARE $paramCopy  -- Int32
SET     $paramCopy = 3

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			p.PersonID
		FROM
			Person p
		WHERE
			CAST($p AS INTEGER) <> p.PersonID
	) AND
	(t1.PersonID IN (
		SELECT
			p_1.PersonID
		FROM
			Person p_1
		WHERE
			p_1.PersonID = CAST($p_1 AS INTEGER)
	) OR t1.PersonID IN (
		SELECT
			p_2.PersonID
		FROM
			Person p_2
		WHERE
			p_2.PersonID = CAST($paramCopy AS INTEGER)
	))

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 3
DECLARE $paramCopy  -- Int32
SET     $paramCopy = 2
DECLARE $p_1  -- Int32
SET     $p_1 = 3

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID IN (
		SELECT
			p.PersonID
		FROM
			Person p
		WHERE
			CAST($p AS INTEGER) <> p.PersonID
	) AND
	(t1.PersonID IN (
		SELECT
			p_1.PersonID
		FROM
			Person p_1
		WHERE
			CAST($paramCopy AS INTEGER) = p_1.PersonID
	) OR t1.PersonID IN (
		SELECT
			p_2.PersonID
		FROM
			Person p_2
		WHERE
			CAST($p_1 AS INTEGER) <> p_2.PersonID
	))


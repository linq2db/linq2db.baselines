-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1
DECLARE $name NVarChar(4) -- String
SET     $name = 'test'

SELECT
	m_1.PersonID,
	m_1.FirstName,
	m_1.PersonID,
	m_1.LastName,
	m_1.MiddleName,
	m_1.Gender
FROM
	Person m_1
WHERE
	m_1.PersonID = CAST($id AS INTEGER) AND m_1.LastName <> CAST($name AS VARCHAR) OR
	m_1.FirstName <> CAST($name AS VARCHAR) AND m_1.PersonID - 1 = CAST($id AS INTEGER)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1
DECLARE $name NVarChar(4) -- String
SET     $name = 'test'

SELECT
	x.PersonID
FROM
	Person x
WHERE
	x.PersonID = CAST($id AS INTEGER) AND x.LastName <> CAST($name AS VARCHAR) OR
	x.FirstName <> CAST($name AS VARCHAR) AND x.PersonID - 1 = CAST($id AS INTEGER)


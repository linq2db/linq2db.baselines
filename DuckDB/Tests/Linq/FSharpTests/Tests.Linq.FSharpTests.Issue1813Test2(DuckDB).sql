-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Name NVarChar(5) -- String
SET     $Name = 'name1'

INSERT INTO "Names"
(
	Id,
	Name
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Name AS VARCHAR)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2
DECLARE $Name NVarChar(5) -- String
SET     $Name = 'name2'

INSERT INTO "Names"
(
	Id,
	Name
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Name AS VARCHAR)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1
DECLARE $Text NVarChar(7) -- String
SET     $Text = 'address'

INSERT INTO Addresses
(
	Id,
	Text
)
VALUES
(
	CAST($Id AS INTEGER),
	CAST($Text AS VARCHAR)
)

-- DuckDB

SELECT
	m_1.Id,
	d.Id,
	d.Text
FROM
	"Names" m_1
		LEFT JOIN Addresses d ON m_1.Id = d.Id
ORDER BY
	m_1.Id

-- DuckDB

SELECT
	after_1.Id,
	after_1.Name
FROM
	"Names" after_1
ORDER BY
	after_1.Id


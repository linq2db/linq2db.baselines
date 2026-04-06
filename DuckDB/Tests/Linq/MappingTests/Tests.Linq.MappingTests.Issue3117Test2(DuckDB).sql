-- DuckDB
DECLARE $Id  -- Object
SET     $Id = 5

INSERT INTO "User"
(
	Id
)
VALUES
(
	CAST($Id AS INTEGER)
)
RETURNING 
	Id

-- DuckDB

SELECT
	t1.Id
FROM
	"User" t1

-- DuckDB
DECLARE $userId  -- Object
SET     $userId = 5

SELECT
	u.Id
FROM
	"User" u
WHERE
	u.Id = CAST($userId AS INTEGER)
LIMIT 1

-- DuckDB

SELECT
	u.Id
FROM
	"User" u
WHERE
	u.Id IN (5)
LIMIT 1


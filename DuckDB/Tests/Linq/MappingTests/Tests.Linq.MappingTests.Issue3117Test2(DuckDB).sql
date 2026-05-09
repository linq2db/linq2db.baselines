-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 5

INSERT INTO "User"
(
	Id
)
VALUES
(
	$Id
)
RETURNING 
	Id

-- DuckDB

SELECT
	t1.Id
FROM
	"User" t1

-- DuckDB
DECLARE $userId  -- Int32
SET     $userId = 5

SELECT
	u.Id
FROM
	"User" u
WHERE
	u.Id = $userId
LIMIT 1

-- DuckDB

SELECT
	u.Id
FROM
	"User" u
WHERE
	u.Id IN (5)
LIMIT 1


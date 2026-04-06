-- DuckDB
DECLARE $Id  -- Object
SET     $Id = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

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
SET     $userId = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT
	u.Id
FROM
	"User" u
WHERE
	u.Id = CAST($userId AS INTEGER)
LIMIT 1

-- DuckDB
DECLARE $value  -- Object
SET     $value = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT
	u.Id
FROM
	"User" u
WHERE
	u.Id IN (CAST($value AS INTEGER))
LIMIT 1


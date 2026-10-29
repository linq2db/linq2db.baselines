-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

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
DECLARE $userId INTEGER -- Int32
SET     $userId = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT
	u.Id
FROM
	"User" u
WHERE
	u.Id = $userId
LIMIT 1

-- DuckDB
DECLARE $value INTEGER -- Int32
SET     $value = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT
	u.Id
FROM
	"User" u
WHERE
	u.Id IN ($value)
LIMIT 1


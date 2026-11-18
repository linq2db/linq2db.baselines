-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Key INTEGER -- Int32
SET     $Key = 10
DECLARE $OptKey INTEGER -- Int32
SET     $OptKey = 10

INSERT INTO DuPairRow
(
	Id,
	"Key",
	OptKey
)
VALUES
(
	$Id,
	$Key,
	$OptKey
)

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 2
DECLARE $Key INTEGER -- Int32
SET     $Key = 20
DECLARE $OptKey INTEGER -- Int32
SET     $OptKey = 21

INSERT INTO DuPairRow
(
	Id,
	"Key",
	OptKey
)
VALUES
(
	$Id,
	$Key,
	$OptKey
)

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 3
DECLARE $Key INTEGER -- Int32
SET     $Key = 30
DECLARE $OptKey INTEGER -- Int32
SET     $OptKey = NULL

INSERT INTO DuPairRow
(
	Id,
	"Key",
	OptKey
)
VALUES
(
	$Id,
	$Key,
	$OptKey
)

-- DuckDB
SELECT
	x.Id
FROM
	DuPairRow x
WHERE
	x.OptKey = x."Key" OR x.OptKey IS NULL AND x."Key" IS NULL


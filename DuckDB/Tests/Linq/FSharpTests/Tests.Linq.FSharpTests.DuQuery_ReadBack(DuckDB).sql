-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Key INTEGER -- Int32
SET     $Key = 10

INSERT INTO DuRow
(
	Id,
	"Key"
)
VALUES
(
	$Id,
	$Key
)

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 2
DECLARE $Key INTEGER -- Int32
SET     $Key = 20

INSERT INTO DuRow
(
	Id,
	"Key"
)
VALUES
(
	$Id,
	$Key
)

-- DuckDB
SELECT
	x."Key"
FROM
	DuRow x
ORDER BY
	x.Id


-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Key INTEGER -- Int32
SET     $Key = 7

INSERT INTO PrivateDuRow
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
	PrivateDuRow x
ORDER BY
	x.Id


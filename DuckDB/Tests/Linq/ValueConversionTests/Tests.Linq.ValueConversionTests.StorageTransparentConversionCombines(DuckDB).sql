-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 1
DECLARE $Marked INTEGER -- Int32
SET     $Marked = 5
DECLARE $Plain INTEGER -- Int32
SET     $Plain = 5

INSERT INTO StorageTransparentRow
(
	Id,
	Marked,
	Plain
)
VALUES
(
	$Id,
	$Marked,
	$Plain
)

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 2
DECLARE $Marked INTEGER -- Int32
SET     $Marked = 6
DECLARE $Plain INTEGER -- Int32
SET     $Plain = 7

INSERT INTO StorageTransparentRow
(
	Id,
	Marked,
	Plain
)
VALUES
(
	$Id,
	$Marked,
	$Plain
)

-- DuckDB
SELECT
	r.Id
FROM
	StorageTransparentRow r
WHERE
	r.Marked = r.Plain

-- DuckDB
SELECT
	r.Marked + r.Plain
FROM
	StorageTransparentRow r
ORDER BY
	r.Id


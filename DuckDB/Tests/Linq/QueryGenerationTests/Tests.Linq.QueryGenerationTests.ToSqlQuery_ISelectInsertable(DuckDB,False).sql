-- DuckDB
DECLARE $Value  -- Int32
SET     $Value = 1

INSERT INTO TableWithIdentitySrc
(
	"Value"
)
VALUES
(
	CAST($Value AS INTEGER)
)

-- DuckDB
DECLARE $addition  -- Int32
SET     $addition = 123

INSERT INTO TableWithIdentity
(
	"Value"
)
SELECT
	t1."Value" + CAST($addition AS INTEGER)
FROM
	TableWithIdentitySrc t1

-- DuckDB

SELECT
	t1.Id,
	t1."Value"
FROM
	TableWithIdentity t1


-- DuckDB

CREATE TABLE aa
(
	bb INTEGER,
	cc VARCHAR,

	PRIMARY KEY (bb)
)

-- DuckDB
DECLARE $bb  -- Int32
SET     $bb = 99
DECLARE $cc NVarChar(5) -- String
SET     $cc = 'hallo'

INSERT INTO aa
(
	bb,
	cc
)
VALUES
(
	$bb,
	$cc
)

-- DuckDB

SELECT
	t1.bb,
	t1.cc
FROM
	aa t1

-- DuckDB

DROP TABLE aa


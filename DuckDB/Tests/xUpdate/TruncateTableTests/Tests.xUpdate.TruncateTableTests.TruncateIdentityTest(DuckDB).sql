-- DuckDB

DROP TABLE IF EXISTS TestIdTrun;
DROP SEQUENCE IF EXISTS TestIdTrun_ID_seq;
DROP SEQUENCE IF EXISTS TestIdTrun_ID_seq_reset;

-- DuckDB

CREATE SEQUENCE IF NOT EXISTS TestIdTrun_ID_seq START 1;
CREATE TABLE TestIdTrun
(
	ID     INTEGER DEFAULT NEXTVAL('"TestIdTrun_ID_seq"'),
	Field1 DECIMAL                                         NOT NULL,

	PRIMARY KEY (ID)
)

-- DuckDB

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	1
)

-- DuckDB

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	1
)

-- DuckDB
DECLARE $skip  -- Int32
SET     $skip = 1

SELECT
	t1.ID,
	t1.Field1
FROM
	TestIdTrun t1
ORDER BY
	t1.ID
LIMIT 2 OFFSET $skip 

-- DuckDB

TRUNCATE TABLE TestIdTrun;
DROP SEQUENCE IF EXISTS TestIdTrun_ID_seq_reset;
CREATE SEQUENCE TestIdTrun_ID_seq_reset START 1;
ALTER TABLE TestIdTrun ALTER COLUMN ID SET DEFAULT nextval('TestIdTrun_ID_seq_reset');

-- DuckDB

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	1
)

-- DuckDB

INSERT INTO TestIdTrun
(
	Field1
)
VALUES
(
	1
)

-- DuckDB
DECLARE $skip  -- Int32
SET     $skip = 1

SELECT
	t1.ID,
	t1.Field1
FROM
	TestIdTrun t1
ORDER BY
	t1.ID
LIMIT 2 OFFSET $skip 

-- DuckDB

DROP TABLE TestIdTrun;
DROP SEQUENCE IF EXISTS TestIdTrun_ID_seq;
DROP SEQUENCE IF EXISTS TestIdTrun_ID_seq_reset;


-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 1

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(
	CAST($Id AS INTEGER)
)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 2

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(
	CAST($Id AS INTEGER)
)


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


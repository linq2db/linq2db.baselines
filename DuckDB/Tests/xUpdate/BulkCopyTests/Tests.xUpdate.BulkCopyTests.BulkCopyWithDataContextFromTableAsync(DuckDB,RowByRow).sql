INSERT BULK SimpleBulkCopyTable(Id)

INSERT BULK SimpleBulkCopyTable(Id)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 3

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(
	CAST($Id AS INTEGER)
)

INSERT BULK SimpleBulkCopyTable(Id)

INSERT BULK SimpleBulkCopyTable(Id)

-- DuckDB
DECLARE $Id  -- Int32
SET     $Id = 30

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(
	CAST($Id AS INTEGER)
)


INSERT ASYNC BULK SimpleBulkCopyTable(Id)

INSERT ASYNC BULK SimpleBulkCopyTable(Id)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 3

INSERT INTO SimpleBulkCopyTable
(
	Id
)
VALUES
(
	$Id
)


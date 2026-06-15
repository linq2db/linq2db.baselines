-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $DateTime Timestamp -- DateTime2
SET     $DateTime = Timestamp('2000-01-01T00:00:00.000000Z')

INSERT INTO CreateTableTypes
(
	Id,
	DateTime
)
VALUES
(
	$Id,
	$DateTime
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $DateTime Timestamp -- DateTime2
SET     $DateTime = Timestamp('2018-11-24T01:02:03.000000Z')

INSERT INTO CreateTableTypes
(
	Id,
	DateTime
)
VALUES
(
	$Id,
	$DateTime
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.DateTime as DateTime
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id


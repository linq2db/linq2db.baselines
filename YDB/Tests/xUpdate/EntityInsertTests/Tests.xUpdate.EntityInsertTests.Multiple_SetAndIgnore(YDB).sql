-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(1) -- String
SET     $Name = 'n'u
DECLARE $Version Int32
SET     $Version = 101
DECLARE $stamp Timestamp -- DateTime2
SET     $stamp = Timestamp('2026-06-01T00:00:00.000000Z')

INSERT INTO EntityInsertTest
(
	Id,
	Name,
	Version,
	CreatedAt
)
VALUES
(
	$Id,
	$Name,
	$Version,
	$stamp
)

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.Version as Version_1,
	t1.CreatedAt as CreatedAt,
	t1.CreatedBy as CreatedBy
FROM
	EntityInsertTest t1
LIMIT 2


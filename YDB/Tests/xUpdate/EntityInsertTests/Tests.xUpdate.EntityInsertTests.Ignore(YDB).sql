-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(1) -- String
SET     $Name = 'n'u
DECLARE $Version Int32
SET     $Version = 1
DECLARE $CreatedAt Timestamp -- DateTime2
SET     $CreatedAt = NULL

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
	$CreatedAt
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


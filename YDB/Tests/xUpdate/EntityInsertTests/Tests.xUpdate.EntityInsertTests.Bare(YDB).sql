-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $Name Text(2) -- String
SET     $Name = 'n1'u
DECLARE $Version Int32
SET     $Version = 7
DECLARE $CreatedAt Timestamp -- DateTime2
SET     $CreatedAt = NULL
DECLARE $CreatedBy Text(2) -- String
SET     $CreatedBy = 'u1'u

INSERT INTO EntityInsertTest
(
	Id,
	Name,
	Version,
	CreatedAt,
	CreatedBy
)
VALUES
(
	$Id,
	$Name,
	$Version,
	$CreatedAt,
	$CreatedBy
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


-- YDB Ydb
DECLARE $Version Int32
SET     $Version = 99
DECLARE $UpdatedAt Timestamp -- DateTime2
SET     $UpdatedAt = NULL
DECLARE $UpdatedBy Text -- String
SET     $UpdatedBy = NULL
DECLARE $Id Int32
SET     $Id = 1

UPDATE
	EntityUpdateTest
SET
	Version = $Version,
	UpdatedAt = $UpdatedAt,
	UpdatedBy = $UpdatedBy
WHERE
	EntityUpdateTest.Id = $Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Name as Name,
	t1.Version as Version_1,
	t1.UpdatedAt as UpdatedAt,
	t1.UpdatedBy as UpdatedBy
FROM
	EntityUpdateTest t1
LIMIT 2


-- YDB Ydb
DECLARE $Name Text(1) -- String
SET     $Name = 'x'u
DECLARE $Version Int32
SET     $Version = 5
DECLARE $stamp Timestamp -- DateTime2
SET     $stamp = Timestamp('2026-06-01T00:00:00.000000Z')
DECLARE $UpdatedBy Text -- String
SET     $UpdatedBy = NULL
DECLARE $Id Int32
SET     $Id = 1

UPDATE
	EntityUpdateTest
SET
	Name = $Name,
	Version = $Version,
	UpdatedAt = $stamp,
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


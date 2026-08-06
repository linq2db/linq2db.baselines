-- YDB Ydb
DECLARE $Name Text(4) -- String
SET     $Name = 'new1'u
DECLARE $Version Int32
SET     $Version = 5
DECLARE $UpdatedAt Timestamp -- DateTime2
SET     $UpdatedAt = NULL
DECLARE $UpdatedBy Text -- String
SET     $UpdatedBy = NULL
DECLARE $Id Int32
SET     $Id = 1

UPDATE
	EntityUpdateTest
SET
	Name = $Name,
	Version = EntityUpdateTest.Version + $Version,
	UpdatedAt = $UpdatedAt,
	UpdatedBy = $UpdatedBy
WHERE
	EntityUpdateTest.Id = $Id

-- YDB Ydb
DECLARE $Name Text(4) -- String
SET     $Name = 'new2'u
DECLARE $Version Int32
SET     $Version = 10
DECLARE $UpdatedAt Timestamp -- DateTime2
SET     $UpdatedAt = NULL
DECLARE $UpdatedBy Text -- String
SET     $UpdatedBy = NULL
DECLARE $Id Int32
SET     $Id = 2

UPDATE
	EntityUpdateTest
SET
	Name = $Name,
	Version = EntityUpdateTest.Version + $Version,
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
ORDER BY
	t1.Id


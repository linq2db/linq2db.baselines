-- YDB Ydb
DECLARE $Value1 Uuid -- Guid
SET     $Value1 = Uuid('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')
DECLARE $id Int32
SET     $id = 1

UPDATE
	UpdateSetTest
SET
	Value1 = $Value1
WHERE
	UpdateSetTest.Id = $id

-- YDB Ydb
DECLARE $id Int32
SET     $id = 1

SELECT
	t1.Value1 as Value1
FROM
	UpdateSetTest t1
WHERE
	t1.Id = $id
LIMIT 2

-- YDB Ydb
DECLARE $Value1 Uuid -- Guid
SET     $Value1 = Uuid('a948600d-de21-4f74-8ac2-9516b287076e')
DECLARE $id Int32
SET     $id = 1

UPDATE
	UpdateSetTest
SET
	Value1 = $Value1
WHERE
	UpdateSetTest.Id = $id

-- YDB Ydb
DECLARE $id Int32
SET     $id = 1

SELECT
	t1.Value1 as Value1
FROM
	UpdateSetTest t1
WHERE
	t1.Id = $id
LIMIT 2


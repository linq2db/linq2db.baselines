-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1

INSERT INTO Test3664
(
	Id
)
VALUES
(
	$Id
)

-- YDB Ydb
DECLARE $id Int32
SET     $id = 11

SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.TestId as TestId
FROM
	Test3664 m_1
		INNER JOIN Test3664Item d ON m_1.Id = d.TestId
WHERE
	d.Id = $id

-- YDB Ydb

SELECT
	t1.Id as Id
FROM
	Test3664 t1

-- YDB Ydb
DECLARE $id Int32
SET     $id = 12

SELECT
	m_1.Id as Id,
	d.Id as Id_1,
	d.TestId as TestId
FROM
	Test3664 m_1
		INNER JOIN Test3664Item d ON m_1.Id = d.TestId
WHERE
	d.Id = $id

-- YDB Ydb

SELECT
	t1.Id as Id
FROM
	Test3664 t1


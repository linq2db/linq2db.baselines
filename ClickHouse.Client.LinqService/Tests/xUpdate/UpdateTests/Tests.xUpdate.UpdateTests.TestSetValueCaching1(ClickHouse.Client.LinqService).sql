BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value1 = toUUID('bc7b663d-0fde-4327-8f92-5d8cc3a11d11')
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Value1
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

ALTER TABLE
	UpdateSetTest
UPDATE
	Value1 = toUUID('a948600d-de21-4f74-8ac2-9516b287076e')
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Value1
FROM
	UpdateSetTest t1
WHERE
	t1.Id = 1
LIMIT 2


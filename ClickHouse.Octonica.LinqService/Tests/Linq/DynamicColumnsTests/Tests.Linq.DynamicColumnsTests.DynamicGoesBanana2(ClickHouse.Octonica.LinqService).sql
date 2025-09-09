BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO BananaTable
(
	Id,
	Property
)
VALUES
(
	1,
	'test1'
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Property
FROM
	BananaTable t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

ALTER TABLE
	BananaTable
UPDATE
	Property = 'banana'
WHERE
	Id = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	t1.Id,
	t1.Property
FROM
	BananaTable t1


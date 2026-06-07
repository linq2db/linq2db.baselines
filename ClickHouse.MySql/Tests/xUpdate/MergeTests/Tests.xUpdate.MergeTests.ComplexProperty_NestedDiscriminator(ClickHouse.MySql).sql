-- ClickHouse.MySql ClickHouse

INSERT INTO NestedDiscriminator
(
	Id,
	DogName,
	Kind
)
VALUES
(
	1,
	'Rex',
	'Dog'
)

-- ClickHouse.MySql ClickHouse

INSERT INTO NestedDiscriminator
(
	Id,
	CatName,
	Kind
)
VALUES
(
	2,
	'Tom',
	'Cat'
)

-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.DogName,
	t1.Kind
FROM
	NestedDiscriminator t1
WHERE
	t1.Kind = 'Dog'
ORDER BY
	t1.Id


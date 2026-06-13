-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

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


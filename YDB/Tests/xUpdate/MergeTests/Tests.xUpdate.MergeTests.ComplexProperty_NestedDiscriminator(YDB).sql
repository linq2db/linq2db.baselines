-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 1
DECLARE $DogName Text(3) -- String
SET     $DogName = 'Rex'u
DECLARE $Meta_Kind Text(3) -- String
SET     $Meta_Kind = 'Dog'u

INSERT INTO NestedDiscriminator
(
	Id,
	DogName,
	Kind
)
VALUES
(
	$Id,
	$DogName,
	$Meta_Kind
)

-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 2
DECLARE $CatName Text(3) -- String
SET     $CatName = 'Tom'u
DECLARE $Meta_Kind Text(3) -- String
SET     $Meta_Kind = 'Cat'u

INSERT INTO NestedDiscriminator
(
	Id,
	CatName,
	Kind
)
VALUES
(
	$Id,
	$CatName,
	$Meta_Kind
)

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.DogName as DogName,
	t1.Kind as Kind
FROM
	NestedDiscriminator t1
WHERE
	t1.Kind = 'Dog'u
ORDER BY
	t1.Id


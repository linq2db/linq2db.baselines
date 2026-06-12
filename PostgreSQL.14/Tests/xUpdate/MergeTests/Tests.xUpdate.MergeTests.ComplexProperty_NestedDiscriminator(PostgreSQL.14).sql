-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DogName Text(3) -- String
SET     @DogName = 'Rex'
DECLARE @Meta_Kind Text(3) -- String
SET     @Meta_Kind = 'Dog'

INSERT INTO "NestedDiscriminator"
(
	"Id",
	"DogName",
	"Kind"
)
VALUES
(
	:Id,
	:DogName,
	:Meta_Kind
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @CatName Text(3) -- String
SET     @CatName = 'Tom'
DECLARE @Meta_Kind Text(3) -- String
SET     @Meta_Kind = 'Cat'

INSERT INTO "NestedDiscriminator"
(
	"Id",
	"CatName",
	"Kind"
)
VALUES
(
	:Id,
	:CatName,
	:Meta_Kind
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."DogName",
	t1."Kind"
FROM
	"NestedDiscriminator" t1
WHERE
	t1."Kind" = 'Dog'
ORDER BY
	t1."Id"


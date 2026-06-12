-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DogName Varchar2(3) -- String
SET     @DogName = 'Rex'
DECLARE @Meta_Kind Varchar2(3) -- String
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

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @CatName Varchar2(3) -- String
SET     @CatName = 'Tom'
DECLARE @Meta_Kind Varchar2(3) -- String
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

-- Oracle.18.Managed Oracle.Managed Oracle12

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


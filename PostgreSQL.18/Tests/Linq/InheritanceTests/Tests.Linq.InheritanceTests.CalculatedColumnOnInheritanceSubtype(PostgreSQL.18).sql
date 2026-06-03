-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @Name_First Text(4) -- String
SET     @Name_First = 'John'
DECLARE @Name_Second Text(3) -- String
SET     @Name_Second = 'Doe'

INSERT INTO "CalcSubtypeTable"
(
	"Id",
	"Type",
	"Name_First",
	"Name_Second"
)
VALUES
(
	:Id,
	:Type,
	:Name_First,
	:Name_Second
)

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Type",
	t1."Name_First",
	t1."Name_Second",
	Coalesce(t1."Name_First", '') || ' ' || Coalesce(t1."Name_Second", '')
FROM
	"CalcSubtypeTable" t1
LIMIT 2


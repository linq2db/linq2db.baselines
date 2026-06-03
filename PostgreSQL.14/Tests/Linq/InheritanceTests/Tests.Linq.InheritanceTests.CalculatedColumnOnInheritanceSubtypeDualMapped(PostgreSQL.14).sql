-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @Stored Text(4) -- String
SET     @Stored = 'John'

INSERT INTO "CalcSubtypeDual"
(
	"Id",
	"Type",
	"Stored"
)
VALUES
(
	:Id,
	:Type,
	:Stored
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Type",
	t1."Id",
	t1."Stored",
	Coalesce(t1."Stored", '') || '!'
FROM
	"CalcSubtypeDual" t1
LIMIT 2


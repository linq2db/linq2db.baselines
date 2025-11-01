-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @AOnly Text(6) -- String
SET     @AOnly = 'a only'

INSERT INTO "ConcreteA"
(
	"Id",
	"AOnly"
)
VALUES
(
	:Id,
	:AOnly
)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @BOnly Text(6) -- String
SET     @BOnly = 'b only'

INSERT INTO "ConcreteB"
(
	"Id",
	"BOnly"
)
VALUES
(
	:Id,
	:BOnly
)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	e."Id",
	e."AOnly",
	NULL::Int,
	NULL::text
FROM
	"ConcreteA" e
UNION ALL
SELECT
	NULL::Int,
	NULL::text,
	e_1."Id",
	e_1."BOnly"
FROM
	"ConcreteB" e_1


-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "SomeTable"
(
	"Id",
	"ClassProp",
	"Interface"
)
VALUES
(
	1,
	True,
	False
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."ClassProp",
	t1."Interface"
FROM
	"SomeTable" t1
LIMIT 2


-- PostgreSQL.18 PostgreSQL13

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

-- PostgreSQL.18 PostgreSQL13

SELECT
	t1."Id",
	t1."ClassProp",
	t1."Interface"
FROM
	"SomeTable" t1
LIMIT 2


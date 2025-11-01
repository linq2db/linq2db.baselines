-- PostgreSQL.18 PostgreSQL

INSERT INTO "SomeTable"
(
	"ClassProp",
	"Interface"
)
VALUES
(
	True,
	False
)

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."ClassProp",
	t1."Interface"
FROM
	"SomeTable" t1
LIMIT 2


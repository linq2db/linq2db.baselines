BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ClassProp",
	t1."Interface"
FROM
	"SomeTable" t1
LIMIT 2


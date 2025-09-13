BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

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

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."ClassProp",
	t1."Interface"
FROM
	"SomeTable" t1
LIMIT 2


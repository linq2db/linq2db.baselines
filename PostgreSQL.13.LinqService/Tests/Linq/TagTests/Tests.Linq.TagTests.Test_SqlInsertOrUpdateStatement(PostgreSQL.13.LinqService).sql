BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

/* My Test */
INSERT INTO "TestTable" AS t1
(
	"Id",
	"Fd"
)
VALUES
(
	1,
	2
)
ON CONFLICT ("Id") DO UPDATE SET
	"Fd" = 2


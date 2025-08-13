BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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


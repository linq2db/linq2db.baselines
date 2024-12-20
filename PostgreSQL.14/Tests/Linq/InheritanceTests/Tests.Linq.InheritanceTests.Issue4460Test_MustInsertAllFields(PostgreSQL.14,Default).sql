BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4460Table"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4460Table"
(
	"Id"      Int  NOT NULL,
	"Code"    text     NULL,
	"Name"    text     NULL,
	"Surname" text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Issue4460Table"
(
	"Id",
	"Code",
	"Name",
	"Surname"
)
VALUES
(1,'GrandChild','Tom','Black')

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Code",
	t1."Id",
	t1."Name",
	t1."Surname"
FROM
	"Issue4460Table" t1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4460Table"


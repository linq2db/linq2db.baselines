BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE "Issue464"
(
	"Id"    Int NOT NULL,
	"Value" Int     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue464"
(
	"Id",
	"Value"
)
VALUES
(1,1),
(2,2),
(3,3)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"Issue464" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE "Issue464"


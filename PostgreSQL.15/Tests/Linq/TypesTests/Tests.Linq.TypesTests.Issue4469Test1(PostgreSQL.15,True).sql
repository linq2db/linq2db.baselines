BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4469Table"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4469Table"
(
	"Integer" Int            NOT NULL,
	"Decimal" decimal(10, 5) NOT NULL,
	"Double"  Float          NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4469Table"
(
	"Integer",
	"Decimal",
	"Double"
)
VALUES
(100,100,100)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	v."Integer" / 33,
	v."Decimal" / 33,
	v."Double" / 33
FROM
	"Issue4469Table" v
LIMIT 2

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4469Table"


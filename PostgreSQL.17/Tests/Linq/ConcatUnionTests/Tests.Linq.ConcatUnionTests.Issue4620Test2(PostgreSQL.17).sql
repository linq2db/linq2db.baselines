BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4620Table"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4620Table"
(
	"Id"         Int     NOT NULL,
	"IdContract" Int         NULL,
	"IdClient"   Int         NULL,
	"Sum"        decimal NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
VALUES
(1,NULL,1,0),
(2,2,NULL,0),
(3,NULL,NULL,0),
(4,2,1,0)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4620Client"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4620Client"
(
	"Id"   Int  NOT NULL,
	"Name" text     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4620Client"
(
	"Id",
	"Name"
)
VALUES
(1,'Client 1'),
(2,'Client 2')

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4620Contract"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4620Contract"
(
	"Id"       Int NOT NULL,
	"IdClient" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4620Contract"
(
	"Id",
	"IdClient"
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	(
		SELECT
			b."Id",
			"a_Client"."Name"
		FROM
			"Issue4620Table" b
				INNER JOIN "Issue4620Client" "a_Client" ON b."IdClient" = "a_Client"."Id" AND b."IdClient" IS NOT NULL
		WHERE
			b."IdClient" IS NOT NULL
		UNION ALL
		SELECT
			b_1."Id",
			"a_Client_1"."Name"
		FROM
			"Issue4620Table" b_1
				INNER JOIN "Issue4620Contract" "a_Contract" ON b_1."IdContract" = "a_Contract"."Id" AND b_1."IdContract" IS NOT NULL
				INNER JOIN "Issue4620Client" "a_Client_1" ON "a_Contract"."IdClient" = "a_Client_1"."Id"
		WHERE
			b_1."IdContract" IS NOT NULL
	) t1
ORDER BY
	t1."Id",
	t1."Name"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4620Contract"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4620Client"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4620Table"


BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "MainEntity"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "MainEntity"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_MainEntity" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SubEntity"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SubEntity"
(
	"Id"           Int NOT NULL,
	"MainEntityId" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	x."Id",
	(
		SELECT
			Count(*)
		FROM
			"SubEntity" t1
		WHERE
			x."Id" = t1."MainEntityId"
	)
FROM
	"MainEntity" x
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"SubEntity" t2
		WHERE
			x."Id" = t2."MainEntityId"
	)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SubEntity"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "MainEntity"


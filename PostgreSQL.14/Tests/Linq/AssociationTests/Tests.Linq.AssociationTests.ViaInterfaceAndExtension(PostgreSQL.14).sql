BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "MainEntity"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "MainEntity"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_MainEntity" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SubEntity"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "SubEntity"
(
	"Id"           Int NOT NULL,
	"MainEntityId" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	x."Id",
	(
		SELECT
			COUNT(*)
		FROM
			"SubEntity" "a_SubEntities"
		WHERE
			x."Id" = "a_SubEntities"."MainEntityId"
	)
FROM
	"MainEntity" x
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"SubEntity" "a_SubEntities_1"
		WHERE
			x."Id" = "a_SubEntities_1"."MainEntityId"
	)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "SubEntity"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "MainEntity"


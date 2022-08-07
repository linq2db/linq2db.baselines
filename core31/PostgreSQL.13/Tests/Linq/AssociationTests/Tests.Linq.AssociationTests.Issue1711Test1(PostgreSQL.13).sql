﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Entity1711"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Entity1711"
(
	"Id" BigInt NOT NULL,

	CONSTRAINT "PK_Entity1711" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Relationship1711"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Relationship1711"
(
	"EntityId" BigInt  NOT NULL,
	"Deleted"  Boolean NOT NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."Id"
FROM
	"Entity1711" t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Relationship1711" t1
		WHERE
			t."Id" = t1."EntityId"
	)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Relationship1711"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Entity1711"


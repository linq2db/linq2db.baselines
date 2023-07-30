BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "CustomerBase"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "CustomerBase"
(
	"Id"           SERIAL   NOT NULL,
	"ClientType"   text     NOT NULL,
	"Name"         text         NULL,
	"ContactEmail" text         NULL,
	"Enabled"      Boolean      NULL,

	CONSTRAINT "PK_CustomerBase" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	cb."Id",
	cb."Name",
	cb."ContactEmail",
	Coalesce(cb."Enabled", False)
FROM
	"CustomerBase" cb
WHERE
	cb."ClientType" = 'Client'

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "CustomerBase"


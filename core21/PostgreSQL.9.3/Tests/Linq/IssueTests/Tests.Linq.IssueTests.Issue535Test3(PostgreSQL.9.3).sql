﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "CustomerBase"
(
	"Id"           SERIAL   NOT NULL,
	"ClientType"   text     NOT NULL,
	"Name"         text         NULL,
	"ContactEmail" text         NULL,
	"Enabled"      Boolean      NULL,

	CONSTRAINT "PK_CustomerBase" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

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
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "CustomerBase"


BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "User"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "User"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Resource"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Resource"
(
	"Id"                 Int NOT NULL,
	"AssociatedObjectId" Int NOT NULL,
	"AssociationTypeId"  Int     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Lookup"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Lookup"
(
	"Id"   Int  NOT NULL,
	"Type" text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."AssociatedObjectId",
	t1."AssociationTypeId",
	"a_User"."Id"
FROM
	"Resource" t1
		LEFT JOIN "Lookup" "a_AssociationTypeCode" ON t1."AssociationTypeId" = "a_AssociationTypeCode"."Id"
		LEFT JOIN "User" "a_User" ON "a_AssociationTypeCode"."Type" = 'us' AND "a_User"."Id" = t1."AssociatedObjectId"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Lookup"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Resource"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "User"


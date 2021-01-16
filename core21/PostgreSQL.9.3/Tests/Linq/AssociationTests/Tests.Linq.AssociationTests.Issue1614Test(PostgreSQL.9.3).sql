BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "User"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "Resource"
(
	"Id"                 Int NOT NULL,
	"AssociatedObjectId" Int NOT NULL,
	"AssociationTypeId"  Int     NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "Lookup"
(
	"Id"   Int  NOT NULL,
	"Type" text     NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "Lookup"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "Resource"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "User"


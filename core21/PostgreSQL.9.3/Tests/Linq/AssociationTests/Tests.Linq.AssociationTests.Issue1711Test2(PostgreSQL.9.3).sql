BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "Entity1711"
(
	"Id" BigInt NOT NULL,

	CONSTRAINT "PK_Entity1711" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "Relationship1711"
(
	"EntityId" BigInt  NOT NULL,
	"Deleted"  Boolean NOT NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "Relationship1711"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "Entity1711"


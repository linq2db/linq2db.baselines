BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "TestTrun"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "TestTrun"
(
	"ID"     Int     NOT NULL,
	"Field1" Decimal NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

TRUNCATE TABLE "TestTrun"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "TestTrun"


BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "TestTrun"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "TestTrun"
(
	"ID"     Int     NOT NULL,
	"Field1" Decimal NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

TRUNCATE TABLE "TestTrun"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "TestTrun"


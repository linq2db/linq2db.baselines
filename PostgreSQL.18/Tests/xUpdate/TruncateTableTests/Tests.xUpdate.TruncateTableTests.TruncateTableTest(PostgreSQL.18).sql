BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "TestTrun"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

CREATE TABLE "TestTrun"
(
	"ID"     Int     NOT NULL,
	"Field1" decimal NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

TRUNCATE TABLE "TestTrun"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE "TestTrun"


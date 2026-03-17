-- PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "TestTrun"

-- PostgreSQL.13 PostgreSQL

CREATE TABLE "TestTrun"
(
	"ID"     Int     NOT NULL,
	"Field1" decimal NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY ("ID")
)

-- PostgreSQL.13 PostgreSQL

TRUNCATE TABLE "TestTrun"

-- PostgreSQL.13 PostgreSQL

DROP TABLE "TestTrun"


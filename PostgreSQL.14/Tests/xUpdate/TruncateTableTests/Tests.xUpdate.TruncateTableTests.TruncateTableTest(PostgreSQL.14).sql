-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

DROP TABLE IF EXISTS "TestTrun"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

CREATE TABLE "TestTrun"
(
	"ID"     Int     NOT NULL,
	"Field1" decimal NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY ("ID")
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

TRUNCATE TABLE "TestTrun"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

DROP TABLE "TestTrun"


-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

DROP TABLE IF EXISTS "TestTrun"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

CREATE TABLE "TestTrun"
(
	"ID"     Int     NOT NULL,
	"Field1" decimal NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY ("ID")
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

TRUNCATE TABLE "TestTrun"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

DROP TABLE "TestTrun"


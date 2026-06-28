-- PostgreSQL.18 PostgreSQL13

DROP TABLE IF EXISTS "TestTrun"

-- PostgreSQL.18 PostgreSQL13

CREATE TABLE "TestTrun"
(
	"ID"     Int     NOT NULL,
	"Field1" decimal NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY ("ID")
)

-- PostgreSQL.18 PostgreSQL13

TRUNCATE TABLE "TestTrun"

-- PostgreSQL.18 PostgreSQL13

DROP TABLE "TestTrun"


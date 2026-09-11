-- PostgreSQL.11 PostgreSQL
DROP TABLE IF EXISTS "TestTrun"

-- PostgreSQL.11 PostgreSQL
CREATE TABLE "TestTrun"
(
	"ID"     Int     NOT NULL,
	"Field1" decimal NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY ("ID")
)

-- PostgreSQL.11 PostgreSQL
TRUNCATE TABLE "TestTrun"

-- PostgreSQL.11 PostgreSQL
DROP TABLE "TestTrun"


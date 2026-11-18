-- PostgreSQL.15 PostgreSQL12
DROP TABLE IF EXISTS "TestTrun"

-- PostgreSQL.15 PostgreSQL12
CREATE TABLE "TestTrun"
(
	"ID"     Int     NOT NULL,
	"Field1" decimal NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY ("ID")
)

-- PostgreSQL.15 PostgreSQL12
TRUNCATE TABLE "TestTrun"

-- PostgreSQL.15 PostgreSQL12
DROP TABLE "TestTrun"


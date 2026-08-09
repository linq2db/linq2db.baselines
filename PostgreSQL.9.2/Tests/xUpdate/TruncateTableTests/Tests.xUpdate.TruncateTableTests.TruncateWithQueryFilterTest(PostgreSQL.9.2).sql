-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS "TestTrun"

-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS "TestTrunDetail"

-- PostgreSQL.9.2 PostgreSQL
CREATE TABLE "TestTrunDetail"
(
	"ID"         Int     NOT NULL,
	"TestTrunID" Int     NOT NULL,
	"IsActive"   Boolean NOT NULL,

	CONSTRAINT "PK_TestTrunDetail" PRIMARY KEY ("ID")
)

-- PostgreSQL.9.2 PostgreSQL
CREATE TABLE "TestTrun"
(
	"ID"     Int     NOT NULL,
	"Field1" decimal NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY ("ID")
)

-- PostgreSQL.9.2 PostgreSQL
TRUNCATE TABLE "TestTrun"

-- PostgreSQL.9.2 PostgreSQL
DROP TABLE "TestTrun"

-- PostgreSQL.9.2 PostgreSQL
DROP TABLE "TestTrunDetail"


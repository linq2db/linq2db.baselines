-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DROP TABLE IF EXISTS "TestTrun"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DROP TABLE IF EXISTS "TestTrunDetail"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
CREATE TABLE "TestTrunDetail"
(
	"ID"         Int     NOT NULL,
	"TestTrunID" Int     NOT NULL,
	"IsActive"   Boolean NOT NULL,

	CONSTRAINT "PK_TestTrunDetail" PRIMARY KEY ("ID")
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
CREATE TABLE "TestTrun"
(
	"ID"     Int     NOT NULL,
	"Field1" decimal NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY ("ID")
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
TRUNCATE TABLE "TestTrun"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DROP TABLE "TestTrun"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DROP TABLE "TestTrunDetail"


-- PostgreSQL.18 PostgreSQL12

DROP TABLE IF EXISTS "TestTrun"

-- PostgreSQL.18 PostgreSQL12

DROP TABLE IF EXISTS "TestTrunDetail"

-- PostgreSQL.18 PostgreSQL12

CREATE TABLE "TestTrunDetail"
(
	"ID"         Int     NOT NULL,
	"TestTrunID" Int     NOT NULL,
	"IsActive"   Boolean NOT NULL,

	CONSTRAINT "PK_TestTrunDetail" PRIMARY KEY ("ID")
)

-- PostgreSQL.18 PostgreSQL12

CREATE TABLE "TestTrun"
(
	"ID"     Int     NOT NULL,
	"Field1" decimal NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY ("ID")
)

-- PostgreSQL.18 PostgreSQL12

TRUNCATE TABLE "TestTrun"

-- PostgreSQL.18 PostgreSQL12

DROP TABLE "TestTrun"

-- PostgreSQL.18 PostgreSQL12

DROP TABLE "TestTrunDetail"


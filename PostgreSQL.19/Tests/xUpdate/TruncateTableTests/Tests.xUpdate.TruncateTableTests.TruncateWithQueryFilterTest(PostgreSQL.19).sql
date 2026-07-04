-- PostgreSQL.19 PostgreSQL13

DROP TABLE IF EXISTS "TestTrun"

-- PostgreSQL.19 PostgreSQL13

DROP TABLE IF EXISTS "TestTrunDetail"

-- PostgreSQL.19 PostgreSQL13

CREATE TABLE "TestTrunDetail"
(
	"ID"         Int     NOT NULL,
	"TestTrunID" Int     NOT NULL,
	"IsActive"   Boolean NOT NULL,

	CONSTRAINT "PK_TestTrunDetail" PRIMARY KEY ("ID")
)

-- PostgreSQL.19 PostgreSQL13

CREATE TABLE "TestTrun"
(
	"ID"     Int     NOT NULL,
	"Field1" decimal NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY ("ID")
)

-- PostgreSQL.19 PostgreSQL13

TRUNCATE TABLE "TestTrun"

-- PostgreSQL.19 PostgreSQL13

DROP TABLE "TestTrun"

-- PostgreSQL.19 PostgreSQL13

DROP TABLE "TestTrunDetail"


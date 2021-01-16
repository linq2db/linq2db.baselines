BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS test_temp
(
	"ID"     SERIAL   NOT NULL,
	"Field1" Decimal  NOT NULL,

	CONSTRAINT "PK_test_temp" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO test_temp
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO test_temp
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

TRUNCATE TABLE test_temp CONTINUE IDENTITY

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO test_temp
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO test_temp
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS test_temp


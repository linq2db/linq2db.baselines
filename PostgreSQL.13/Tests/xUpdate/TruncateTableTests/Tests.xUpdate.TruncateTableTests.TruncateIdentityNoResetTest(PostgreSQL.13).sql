BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS test_temp

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS test_temp
(
	"ID"     SERIAL   NOT NULL,
	"Field1" decimal  NOT NULL,

	CONSTRAINT "PK_test_temp" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

TRUNCATE TABLE test_temp CONTINUE IDENTITY

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO test_temp
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO test_temp
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	t1."ID",
	t1."Field1"
FROM
	test_temp t1
ORDER BY
	t1."ID"
LIMIT 2 OFFSET :skip 

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

TRUNCATE TABLE test_temp CONTINUE IDENTITY

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO test_temp
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO test_temp
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	t1."ID",
	t1."Field1"
FROM
	test_temp t1
ORDER BY
	t1."ID"
LIMIT 2 OFFSET :skip 

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS test_temp


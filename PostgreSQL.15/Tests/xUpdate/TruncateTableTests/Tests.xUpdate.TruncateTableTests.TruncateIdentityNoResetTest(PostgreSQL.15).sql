-- PostgreSQL.15 PostgreSQL

TRUNCATE TABLE test_temp CONTINUE IDENTITY

-- PostgreSQL.15 PostgreSQL

INSERT INTO test_temp
(
	"Field1"
)
VALUES
(
	1
)

-- PostgreSQL.15 PostgreSQL

INSERT INTO test_temp
(
	"Field1"
)
VALUES
(
	1
)

-- PostgreSQL.15 PostgreSQL
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

-- PostgreSQL.15 PostgreSQL

TRUNCATE TABLE test_temp CONTINUE IDENTITY

-- PostgreSQL.15 PostgreSQL

INSERT INTO test_temp
(
	"Field1"
)
VALUES
(
	1
)

-- PostgreSQL.15 PostgreSQL

INSERT INTO test_temp
(
	"Field1"
)
VALUES
(
	1
)

-- PostgreSQL.15 PostgreSQL
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


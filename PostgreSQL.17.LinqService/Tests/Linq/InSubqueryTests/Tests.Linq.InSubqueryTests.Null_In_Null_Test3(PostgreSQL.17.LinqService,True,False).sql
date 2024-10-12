BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS test_in_1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS test_in_1
(
	"ID" Int     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO test_in_1
(
	"ID"
)
VALUES
(
	:ID
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 3

INSERT INTO test_in_1
(
	"ID"
)
VALUES
(
	:ID
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS test_in_2
(
	"ID" Int     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO test_in_2
(
	"ID"
)
VALUES
(
	:ID
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 2

INSERT INTO test_in_2
(
	"ID"
)
VALUES
(
	:ID
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = NULL

INSERT INTO test_in_2
(
	"ID"
)
VALUES
(
	:ID
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."ID"
FROM
	test_in_1 t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			test_in_2 p
		WHERE
			(t."ID" = p."ID" OR t."ID" IS NULL AND p."ID" IS NULL)
	)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID"
FROM
	test_in_1 t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID"
FROM
	test_in_2 t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS test_in_1


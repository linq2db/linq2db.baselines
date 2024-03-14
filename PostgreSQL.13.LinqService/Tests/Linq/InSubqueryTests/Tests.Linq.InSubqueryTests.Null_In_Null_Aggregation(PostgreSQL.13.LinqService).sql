﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS test_in_1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS test_in_1
(
	"ID" Int     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS test_in_2
(
	"ID" Int     NULL,
	"GV" Int     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @GV Integer -- Int32
SET     @GV = 1

INSERT INTO test_in_2
(
	"ID",
	"GV"
)
VALUES
(
	:ID,
	:GV
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @GV Integer -- Int32
SET     @GV = 0

INSERT INTO test_in_2
(
	"ID",
	"GV"
)
VALUES
(
	:ID,
	:GV
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = NULL
DECLARE @GV Integer -- Int32
SET     @GV = NULL

INSERT INTO test_in_2
(
	"ID",
	"GV"
)
VALUES
(
	:ID,
	:GV
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ID"
FROM
	test_in_1 t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					Min(g_1."ID") as "Min_1"
				FROM
					test_in_2 g_1
				GROUP BY
					g_1."GV"
			) t1
		WHERE
			(t."ID" = t1."Min_1" OR t."ID" IS NULL AND t1."Min_1" IS NULL)
	)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID"
FROM
	test_in_1 t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID",
	t1."GV"
FROM
	test_in_2 t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS test_in_1


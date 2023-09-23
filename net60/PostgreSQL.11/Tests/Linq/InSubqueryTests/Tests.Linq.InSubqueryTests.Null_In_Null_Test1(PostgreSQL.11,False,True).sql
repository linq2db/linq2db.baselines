﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS test_in_1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS test_in_1
(
	"ID" Int     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

INSERT INTO test_in_1
(
	"ID"
)
VALUES
(1),
(3),
(NULL)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS test_in_2
(
	"ID" Int     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

INSERT INTO test_in_2
(
	"ID"
)
VALUES
(1),
(2),
(NULL)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID"
FROM
	test_in_1 t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ID"
FROM
	test_in_1 t
WHERE
	EXISTS(
		SELECT
			p."ID"
		FROM
			test_in_2 p
		WHERE
			(p."ID" = t."ID" OR p."ID" IS NULL AND t."ID" IS NULL) AND
			(p."ID" = t."ID" OR p."ID" IS NULL AND t."ID" IS NULL)
	)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID"
FROM
	test_in_2 t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID"
FROM
	test_in_2 t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID"
FROM
	test_in_2 t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS test_in_2

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS test_in_1


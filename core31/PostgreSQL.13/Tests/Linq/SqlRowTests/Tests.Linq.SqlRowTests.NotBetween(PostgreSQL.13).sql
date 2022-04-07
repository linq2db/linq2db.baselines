﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Ints"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Ints"
(
	"One"   Int NOT NULL,
	"Two"   Int NOT NULL,
	"Three" Int NOT NULL,
	"Four"  Int NOT NULL,
	"Five"  Int NOT NULL,
	"Nil"   Int     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Ints"
(
	"One",
	"Two",
	"Three",
	"Four",
	"Five",
	"Nil"
)
VALUES
(1,2,3,4,5,NULL)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two") NOT BETWEEN (i."One", i."One" * 2) AND (i."One", i."One" + i."One")

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Three") NOT BETWEEN (i."One", i."One") AND (i."One", i."Four")

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two") NOT BETWEEN (i."One", i."Three") AND (i."One", i."Two")

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."Two", i."Five") NOT BETWEEN (i."One", i."One") AND (i."Three", i."Two")

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."Two", i."Five") NOT BETWEEN (i."One", i."One") AND (i."Two", i."Two")

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."Two", i."Nil") NOT BETWEEN (i."One", i."One") AND (i."Three", i."One")

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."Two", i."Nil") NOT BETWEEN (i."Two", i."One") AND (i."Two", i."Three")

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."Two", i."Five") NOT BETWEEN (i."One", i."Nil") AND (i."Three", i."Nil")

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."Two", i."Nil") NOT BETWEEN (i."One", i."Nil") AND (i."Three", i."Nil")

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."Two", i."Two") NOT BETWEEN (i."Nil", i."One") AND (i."Three", i."Five")

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Ints"


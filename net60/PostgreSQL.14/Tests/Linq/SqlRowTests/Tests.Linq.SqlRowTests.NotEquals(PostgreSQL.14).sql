﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Ints"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Three") <> (i."One", i."One" * 2, i."Four" - 1)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Two", i."Four") <> (i."One", i."Two", i."Three")

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(i."One", i."Nil", i."Three") <> (i."One", i."Two", i."Three")

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" i
WHERE
	(1, NULL, 4) <> (i."One", i."Nil", i."Three")

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Ints"


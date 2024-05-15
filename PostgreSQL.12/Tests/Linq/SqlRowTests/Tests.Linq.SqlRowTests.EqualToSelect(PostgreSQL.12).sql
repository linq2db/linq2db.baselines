BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Ints"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Ints2"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Ints2"
(
	"One"   Int NOT NULL,
	"Two"   Int NOT NULL,
	"Three" Int NOT NULL,
	"Four"  Int NOT NULL,
	"Five"  Int NOT NULL,
	"Nil"   Int     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Ints2"
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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" x,
	"Ints2" y
WHERE
	(x."One", x."Two", x."Three") = (y."One", y."One" + 1, 3) AND
	y."Nil" IS NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" x,
	"Ints2" y
WHERE
	(x."One", x."Two", x."Three") = (y."One", y."One" + 1, 3) AND
	y."Nil" IS NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" x,
	"Ints2" y
WHERE
	(y."One", y."One" + 1, 3) = (x."One", x."Two", x."Three") AND
	y."Nil" IS NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" x,
	"Ints2" y
WHERE
	(x."One", x."Two", x."Three") <> (y."One", y."One" + 1, 4) AND
	y."Nil" IS NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Ints" x,
	"Ints2" y
WHERE
	(x."One", x."Two", x."Three") <> (y."One", y."One" + 1, 4) AND
	y."Nil" IS NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Ints2"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Ints"


﻿BeforeExecute
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
DECLARE @One Integer -- Int32
SET     @One = 1
DECLARE @Two Integer -- Int32
SET     @Two = 2
DECLARE @Three Integer -- Int32
SET     @Three = 3
DECLARE @Four Integer -- Int32
SET     @Four = 4
DECLARE @Five Integer -- Int32
SET     @Five = 5
DECLARE @Nil Integer -- Int32
SET     @Nil = NULL

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
(
	:One,
	:Two,
	:Three,
	:Four,
	:Five,
	:Nil
)

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
DECLARE @One Integer -- Int32
SET     @One = 1
DECLARE @Two Integer -- Int32
SET     @Two = 2
DECLARE @Three Integer -- Int32
SET     @Three = 3
DECLARE @Four Integer -- Int32
SET     @Four = 4
DECLARE @Five Integer -- Int32
SET     @Five = 5
DECLARE @Nil Integer -- Int32
SET     @Nil = NULL

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
(
	:One,
	:Two,
	:Three,
	:Four,
	:Five,
	:Nil
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" x
WHERE
	(x."One", x."Two", x."Three") = (
		SELECT
			y."One",
			y."One" + 1,
			3
		FROM
			"Ints2" y
		WHERE
			y."Nil" IS NULL
	)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" x
WHERE
	(x."One", x."Two", x."Three") = (
		SELECT
			y."One",
			y."One" + 1,
			3
		FROM
			"Ints2" y
		WHERE
			y."Nil" IS NULL
	)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" x
WHERE
	(x."One", x."Two", x."Three") <> (
		SELECT
			y."One",
			y."One" + 1,
			4
		FROM
			"Ints2" y
		WHERE
			y."Nil" IS NULL
	)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Ints" x
WHERE
	(x."One", x."Two", x."Three") <> (
		SELECT
			y."One",
			y."One" + 1,
			4
		FROM
			"Ints2" y
		WHERE
			y."Nil" IS NULL
	)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Ints2"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Ints"


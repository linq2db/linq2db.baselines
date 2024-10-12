BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Ints"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @One Integer -- Int32
SET     @One = 10
DECLARE @Two Integer -- Int32
SET     @Two = 20
DECLARE @Three Integer -- Int32
SET     @Three = 30
DECLARE @Four Integer -- Int32
SET     @Four = 40
DECLARE @Five Integer -- Int32
SET     @Five = 50
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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

UPDATE
	"Ints"
SET
	"One" = "Ints"."Two" * 5,
	("Two", "Three") = (200, "Ints"."Three" * 10),
	("Four", "Nil") = ("Ints"."One" * "Ints"."Four", 600)
WHERE
	"Ints"."One" = 10

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."One",
	t1."Two",
	t1."Three",
	t1."Four",
	t1."Five",
	t1."Nil"
FROM
	"Ints" t1
ORDER BY
	t1."One"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Ints"


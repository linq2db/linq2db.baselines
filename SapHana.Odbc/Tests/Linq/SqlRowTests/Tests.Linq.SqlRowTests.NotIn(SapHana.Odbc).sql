BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Ints"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Ints"
(
	"One"   Integer NOT NULL,
	"Two"   Integer NOT NULL,
	"Three" Integer NOT NULL,
	"Four"  Integer NOT NULL,
	"Five"  Integer NOT NULL,
	"Nil"   Integer     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @One  -- Int32
SET     @One = 1
DECLARE @Two  -- Int32
SET     @Two = 2
DECLARE @Three  -- Int32
SET     @Three = 3
DECLARE @Four  -- Int32
SET     @Four = 4
DECLARE @Five  -- Int32
SET     @Five = 5
DECLARE @Nil  -- Int32
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
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."One" <> 1 OR "i"."Two" <> "i"."One" * 2)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" <> "i"."One" * 2 OR "i"."Three" <> "i"."Four" - 1) AND
	("i"."One" <> 0 OR "i"."Two" <> 7 OR "i"."Three" <> 9) AND
	("i"."One" >= NULL OR "i"."Two" <> -1 OR "i"."Three" <> "i"."Four")

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Three" <> "i"."One" * 2 OR "i"."Four" <> "i"."Four" - 1) AND
	("i"."One" <> 0 OR "i"."Three" <> 7 OR "i"."Four" <> 9) AND
	("i"."One" >= NULL OR "i"."Three" <> 2)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" <> "i"."One" * 2 OR "i"."Four" <> "i"."Four" - 1) AND
	("i"."One" <> 0 OR "i"."Two" <> 7 OR "i"."Four" <> 9) AND
	("i"."One" >= NULL OR "i"."Two" <> 2)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Nil" <> "i"."One" OR "i"."Two" <> "i"."One" * 2 OR "i"."Four" <> "i"."Four" - 1) AND
	("i"."Nil" <> 0 OR "i"."Two" <> 7 OR "i"."Four" <> 9) AND
	("i"."Nil" >= NULL OR "i"."Two" <> 2)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Ints"


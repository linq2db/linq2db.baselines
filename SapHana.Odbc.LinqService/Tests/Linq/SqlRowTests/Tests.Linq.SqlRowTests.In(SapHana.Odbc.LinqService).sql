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
	"i"."One" = 1 AND "i"."Two" = "i"."One" * 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Two" = "i"."One" * 2 AND "i"."Three" = "i"."Four" - 1 OR
	"i"."One" = 0 AND "i"."Two" = 7 AND "i"."Three" = 9 OR
	"i"."One" >= NULL AND "i"."Two" = -1 AND "i"."Three" = "i"."Four"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Two" = "i"."One" * 2 AND "i"."Four" = "i"."Four" - 1 OR
	"i"."One" = 0 AND "i"."Two" = 7 AND "i"."Four" = 9 OR
	"i"."One" >= NULL AND "i"."Two" = 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Nil" = "i"."One" AND "i"."Two" = "i"."One" * 2 AND "i"."Four" = "i"."Four" - 1 OR
	"i"."Nil" = 0 AND "i"."Two" = 7 AND "i"."Four" = 9 OR
	"i"."Nil" >= NULL AND "i"."Two" = 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Ints"


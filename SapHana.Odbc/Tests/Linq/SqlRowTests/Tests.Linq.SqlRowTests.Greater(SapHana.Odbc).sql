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
	("i"."Two" > "i"."One" * 2 OR "i"."Two" = "i"."One" * 2 AND "i"."Three" > "i"."Four" - 1)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Four" > "i"."Three"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Two" > "i"."Five" OR "i"."Two" = "i"."Five" AND "i"."Four" > "i"."Three")

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	("i"."Nil" > "i"."Two" OR "i"."Nil" = "i"."Two" AND "i"."Four" > "i"."Three")

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	(2 > "i"."One" OR 2 = "i"."One" AND NULL > "i"."Two")

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Ints"


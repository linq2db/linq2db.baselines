﻿BeforeExecute
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
	NOT (("i"."One" > "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" >= "i"."One" * 2) AND ("i"."One" < "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" <= "i"."One" + "i"."One"))

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."One" > "i"."One" OR "i"."One" = "i"."One" AND "i"."Three" >= "i"."One") AND ("i"."One" < "i"."One" OR "i"."One" = "i"."One" AND "i"."Three" <= "i"."Four"))

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."One" > "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" >= "i"."Three") AND ("i"."One" < "i"."One" OR "i"."One" = "i"."One" AND "i"."Two" <= "i"."Two"))

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" >= "i"."One") AND ("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Five" <= "i"."Two"))

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" >= "i"."One") AND ("i"."Two" < "i"."Two" OR "i"."Two" = "i"."Two" AND "i"."Five" <= "i"."Two"))

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Nil" >= "i"."One") AND ("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Nil" <= "i"."One"))

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."Two" OR "i"."Two" = "i"."Two" AND "i"."Nil" >= "i"."One") AND ("i"."Two" < "i"."Two" OR "i"."Two" = "i"."Two" AND "i"."Nil" <= "i"."Three"))

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" >= "i"."Nil") AND ("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Five" <= "i"."Nil"))

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Nil" >= "i"."Nil") AND ("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Nil" <= "i"."Nil"))

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT (("i"."Two" > "i"."Nil" OR "i"."Two" = "i"."Nil" AND "i"."Two" >= "i"."One") AND ("i"."Two" < "i"."Three" OR "i"."Two" = "i"."Three" AND "i"."Two" <= "i"."Five"))

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Ints"


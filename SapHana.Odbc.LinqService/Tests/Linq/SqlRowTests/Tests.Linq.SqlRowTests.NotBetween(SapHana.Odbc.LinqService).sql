﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT ("i"."Two" >= "i"."One" * 2 AND "i"."Two" <= "i"."One" + "i"."One")

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	NOT ("i"."Three" >= "i"."One" AND "i"."Three" <= "i"."Four")

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Ints" "i"
WHERE
	"i"."Two" < "i"."Three"

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
	NOT (("i"."Two" > "i"."One" OR "i"."Two" = "i"."One" AND "i"."Five" >= "i"."One") AND "i"."Five" <= "i"."Two")

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
	NOT ("i"."Nil" >= "i"."One" AND "i"."Nil" <= "i"."Three")

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


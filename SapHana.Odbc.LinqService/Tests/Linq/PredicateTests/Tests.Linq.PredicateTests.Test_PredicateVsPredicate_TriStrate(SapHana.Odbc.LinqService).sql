BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN ("r"."Value1" = "r"."Value2") THEN 1
		ELSE 0
	END = CASE
		WHEN ("r"."Value4" = "r"."Value5") THEN 1
		WHEN NOT ("r"."Value4" = "r"."Value5") THEN 0
		ELSE NULL
	END

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN ("r"."Value1" = "r"."Value5") THEN 1
		WHEN NOT ("r"."Value1" = "r"."Value5") THEN 0
		ELSE NULL
	END = CASE
		WHEN ("r"."Value4" = "r"."Value2") THEN 1
		WHEN NOT ("r"."Value4" = "r"."Value2") THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN ("r"."Value1" = "r"."Value5") THEN 1
		WHEN NOT ("r"."Value1" = "r"."Value5") THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN ("r"."Value4" = "r"."Value2") THEN 1
		WHEN NOT ("r"."Value4" = "r"."Value2") THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN ("r"."Value1" = "r"."Value2") THEN 1
		ELSE 0
	END <> CASE
		WHEN ("r"."Value4" = "r"."Value5") THEN 1
		WHEN NOT ("r"."Value4" = "r"."Value5") THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN ("r"."Value4" = "r"."Value5") THEN 1
		WHEN NOT ("r"."Value4" = "r"."Value5") THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN ("r"."Value1" = "r"."Value5") THEN 1
		WHEN NOT ("r"."Value1" = "r"."Value5") THEN 0
		ELSE NULL
	END <> CASE
		WHEN ("r"."Value4" = "r"."Value2") THEN 1
		WHEN NOT ("r"."Value4" = "r"."Value2") THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN ("r"."Value1" = "r"."Value5") THEN 1
		WHEN NOT ("r"."Value1" = "r"."Value5") THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN ("r"."Value4" = "r"."Value2") THEN 1
		WHEN NOT ("r"."Value4" = "r"."Value2") THEN 0
		ELSE NULL
	END IS NOT NULL OR
	CASE
		WHEN ("r"."Value1" = "r"."Value5") THEN 1
		WHEN NOT ("r"."Value1" = "r"."Value5") THEN 0
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN ("r"."Value4" = "r"."Value2") THEN 1
		WHEN NOT ("r"."Value4" = "r"."Value2") THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN ("r"."Value1" = "r"."Value2") THEN 1
		ELSE 0
	END = CASE
		WHEN ("r"."Value2" = "r"."Value1") THEN 1
		ELSE 0
	END

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN ("r"."Value1" = "r"."Value2") THEN 1
		ELSE 0
	END <> CASE
		WHEN ("r"."Value2" = "r"."Value1") THEN 1
		ELSE 0
	END

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN ("r"."Value4" = "r"."Value5") THEN 1
		WHEN NOT ("r"."Value4" = "r"."Value5") THEN 0
		ELSE NULL
	END = CASE
		WHEN ("r"."Value5" = "r"."Value4") THEN 1
		WHEN NOT ("r"."Value5" = "r"."Value4") THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN ("r"."Value4" = "r"."Value5") THEN 1
		WHEN NOT ("r"."Value4" = "r"."Value5") THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN ("r"."Value5" = "r"."Value4") THEN 1
		WHEN NOT ("r"."Value5" = "r"."Value4") THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN ("r"."Value4" = "r"."Value5") THEN 1
		WHEN NOT ("r"."Value4" = "r"."Value5") THEN 0
		ELSE NULL
	END <> CASE
		WHEN ("r"."Value5" = "r"."Value4") THEN 1
		WHEN NOT ("r"."Value5" = "r"."Value4") THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN ("r"."Value4" = "r"."Value5") THEN 1
		WHEN NOT ("r"."Value4" = "r"."Value5") THEN 0
		ELSE NULL
	END IS NULL AND CASE
		WHEN ("r"."Value5" = "r"."Value4") THEN 1
		WHEN NOT ("r"."Value5" = "r"."Value4") THEN 0
		ELSE NULL
	END IS NOT NULL OR
	CASE
		WHEN ("r"."Value4" = "r"."Value5") THEN 1
		WHEN NOT ("r"."Value4" = "r"."Value5") THEN 0
		ELSE NULL
	END IS NOT NULL AND CASE
		WHEN ("r"."Value5" = "r"."Value4") THEN 1
		WHEN NOT ("r"."Value5" = "r"."Value4") THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN "r"."Value1" >= "r"."Value2" THEN 1
		ELSE 0
	END = CASE
		WHEN ("r"."Value4" <> "r"."Value5") THEN 1
		WHEN NOT ("r"."Value4" <> "r"."Value5") THEN 0
		ELSE NULL
	END

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN "r"."Value1" >= "r"."Value5" THEN 1
		ELSE 0
	END = CASE
		WHEN ("r"."Value4" <> "r"."Value2") THEN 1
		WHEN NOT ("r"."Value4" <> "r"."Value2") THEN 0
		ELSE NULL
	END

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN "r"."Value1" >= "r"."Value2" THEN 1
		ELSE 0
	END <> CASE
		WHEN ("r"."Value4" <> "r"."Value5") THEN 1
		WHEN NOT ("r"."Value4" <> "r"."Value5") THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN ("r"."Value4" <> "r"."Value5") THEN 1
		WHEN NOT ("r"."Value4" <> "r"."Value5") THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN "r"."Value1" >= "r"."Value5" THEN 1
		ELSE 0
	END <> CASE
		WHEN ("r"."Value4" <> "r"."Value2") THEN 1
		WHEN NOT ("r"."Value4" <> "r"."Value2") THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN ("r"."Value4" <> "r"."Value2") THEN 1
		WHEN NOT ("r"."Value4" <> "r"."Value2") THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN "r"."Value1" >= "r"."Value2" THEN 1
		ELSE 0
	END = CASE
		WHEN ("r"."Value2" <> "r"."Value1") THEN 1
		ELSE 0
	END

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN "r"."Value1" >= "r"."Value2" THEN 1
		ELSE 0
	END <> CASE
		WHEN ("r"."Value2" <> "r"."Value1") THEN 1
		ELSE 0
	END

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN "r"."Value4" >= "r"."Value5" THEN 1
		ELSE 0
	END = CASE
		WHEN ("r"."Value5" <> "r"."Value4") THEN 1
		WHEN NOT ("r"."Value5" <> "r"."Value4") THEN 0
		ELSE NULL
	END

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	CASE
		WHEN "r"."Value4" >= "r"."Value5" THEN 1
		ELSE 0
	END <> CASE
		WHEN ("r"."Value5" <> "r"."Value4") THEN 1
		WHEN NOT ("r"."Value5" <> "r"."Value4") THEN 0
		ELSE NULL
	END OR
	CASE
		WHEN ("r"."Value5" <> "r"."Value4") THEN 1
		WHEN NOT ("r"."Value5" <> "r"."Value4") THEN 0
		ELSE NULL
	END IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"


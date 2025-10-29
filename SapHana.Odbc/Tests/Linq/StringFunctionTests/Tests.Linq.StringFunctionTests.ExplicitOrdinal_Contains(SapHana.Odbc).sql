-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"CollatedTable" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @CaseSensitive NVarChar(10) -- String
SET     @CaseSensitive = 'TestString'
DECLARE @CaseInsensitive NVarChar(10) -- String
SET     @CaseInsensitive = 'TestString'

INSERT INTO "CollatedTable"
(
	"Id",
	"CaseSensitive",
	"CaseInsensitive"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	"r"."CaseSensitive" LIKE '%stSt%' ESCAPE '~'

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	"r"."CaseInsensitive" LIKE '%stSt%' ESCAPE '~'

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	"r"."CaseSensitive" LIKE '%stst%' ESCAPE '~'

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	"r"."CaseInsensitive" LIKE '%stst%' ESCAPE '~'


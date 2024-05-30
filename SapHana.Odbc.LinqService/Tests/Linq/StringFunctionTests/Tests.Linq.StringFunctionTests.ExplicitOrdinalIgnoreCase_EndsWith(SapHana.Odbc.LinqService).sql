﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"CollatedTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	Lower("r"."CaseSensitive") LIKE '%ststring' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	Lower("r"."CaseInsensitive") LIKE '%ststring' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	Lower("r"."CaseSensitive") LIKE '%ststring' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"CollatedTable" "r"
WHERE
	Lower("r"."CaseInsensitive") LIKE '%ststring' ESCAPE '~'


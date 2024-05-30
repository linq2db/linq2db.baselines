﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @name  -- Int32
SET     @name = 8
DECLARE @idx  -- Int32
SET     @idx = 4

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert16',
	CAST(? + ? AS NVarChar(11)),
	'M'
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert16%' ESCAPE '~'


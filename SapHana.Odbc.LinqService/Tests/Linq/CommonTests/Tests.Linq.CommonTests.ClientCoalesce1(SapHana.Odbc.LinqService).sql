﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value1  -- Int32
SET     @Value1 = 100

SELECT
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	Coalesce("x"."Value1", ?) > 10

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."Value1"
FROM
	"Parent" "p"


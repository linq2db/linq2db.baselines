﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @param  -- Int32
SET     @param = 33
DECLARE @param Decimal
SET     @param = 33
DECLARE @param  -- Double
SET     @param = 33

SELECT
	CAST("v"."Integer" AS Double) / ?,
	CAST("v"."Decimal" AS Double) / ?,
	"v"."Double" / ?
FROM
	"Issue4469Table" "v"
LIMIT 2


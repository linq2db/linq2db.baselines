﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Date  -- Date
SET     @Date = '2021-01-01'

INSERT INTO "DateOnlyTable"
(
	"Date"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Date"
FROM
	"DateOnlyTable" "t1"
LIMIT 2


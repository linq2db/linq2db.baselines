﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID  -- Int32
SET     @ID = 3

UPDATE
	"TrimTestTable" "t1"
SET
	"Data" = ?
WHERE
	"t1"."ID" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = ?
WHERE
	"t"."Data" = '***XXX***'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p NVarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = ?
WHERE
	"t"."Data" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."ID",
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r"."ID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."ID",
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r"."ID"


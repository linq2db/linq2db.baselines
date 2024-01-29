﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DateOnlyTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "DateOnlyTable"
(
	"Date" Date NOT NULL
)

BeforeExecute
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
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"t1"."Date"
FROM
	"DateOnlyTable" "t1"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DateOnlyTable"


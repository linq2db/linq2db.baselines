﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "_"
WHERE
	"_"."ID" > 1000

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @data Binary
SET     @data = NULL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BinaryValue",
	"BoolValue"
)
VALUES
(
	1001,
	?,
	1
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"LinqDataTypes" "_"
WHERE
	"_"."ID" > 1000


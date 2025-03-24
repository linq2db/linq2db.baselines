﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < ?

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BigIntValue"
)
VALUES
(
	101,
	11
)

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

UPDATE
	"LinqDataTypes" "r"
SET
	"BigIntValue" = 12
WHERE
	"r"."ID" = 101 AND "r"."BigIntValue" = 11

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"r"."BigIntValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = 101 AND "r"."BigIntValue" = 12
LIMIT 1

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < ?


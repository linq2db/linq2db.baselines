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
	12
)

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @param  -- Int64
SET     @param = 11

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BigIntValue"
)
SELECT
	"r"."ID",
	?
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = 101 AND "r"."BigIntValue" = 12

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" = 101 AND "r"."BigIntValue" = 11

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < ?


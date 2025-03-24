﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @DoubleNullable  -- Double
SET     @DoubleNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DoubleNullable"
)
VALUES
(
	?,
	?
)

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @DoubleNullable  -- Double
SET     @DoubleNullable = 4.1299999999999999

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DoubleNullable"
)
VALUES
(
	?,
	?
)

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."DoubleNullable"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"


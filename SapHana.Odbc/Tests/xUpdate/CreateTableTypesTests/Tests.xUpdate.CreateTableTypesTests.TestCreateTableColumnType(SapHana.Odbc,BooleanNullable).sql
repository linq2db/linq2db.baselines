﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CreateTableTypes"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "CreateTableTypes"
(
	"Id"              Integer NOT NULL,
	"BooleanNullable" TinyInt     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @BooleanNullable  -- Byte
SET     @BooleanNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"BooleanNullable"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @BooleanNullable  -- Byte
SET     @BooleanNullable = 1

INSERT INTO "CreateTableTypes"
(
	"Id",
	"BooleanNullable"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."BooleanNullable"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CreateTableTypes"


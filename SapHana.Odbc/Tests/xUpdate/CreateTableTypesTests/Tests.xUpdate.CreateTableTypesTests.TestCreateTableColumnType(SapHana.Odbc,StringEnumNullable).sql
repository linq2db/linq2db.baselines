﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CreateTableTypes"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "CreateTableTypes"
(
	"Id"                 Integer     NOT NULL,
	"StringEnumNullable" NVarChar(2)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StringEnumNullable NVarChar -- String
SET     @StringEnumNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringEnumNullable"
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
DECLARE @StringEnumNullable NVarChar(2) -- String
SET     @StringEnumNullable = '40'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"StringEnumNullable"
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
	"t1"."StringEnumNullable"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CreateTableTypes"


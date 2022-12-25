BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ConcurrencyTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "ConcurrencyTable"
(
	"Id"    Integer       NOT NULL,
	"Stamp" Integer       NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -10
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'initial'

INSERT INTO "ConcurrencyTable"
(
	"Id",
	"Stamp",
	"Value"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'value 1'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyTable"
SET
	"ConcurrencyTable"."Stamp" = "ConcurrencyTable"."Stamp" + 1,
	"ConcurrencyTable"."Value" = ?
WHERE
	"ConcurrencyTable"."Id" = ? AND "ConcurrencyTable"."Stamp" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'value 2'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -9

UPDATE
	"ConcurrencyTable"
SET
	"ConcurrencyTable"."Stamp" = "ConcurrencyTable"."Stamp" + 1,
	"ConcurrencyTable"."Value" = ?
WHERE
	"ConcurrencyTable"."Id" = ? AND "ConcurrencyTable"."Stamp" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'value 3'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -9

UPDATE
	"ConcurrencyTable"
SET
	"ConcurrencyTable"."Stamp" = "ConcurrencyTable"."Stamp" + 1,
	"ConcurrencyTable"."Value" = ?
WHERE
	"ConcurrencyTable"."Id" = ? AND "ConcurrencyTable"."Stamp" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyTable" "obj"
WHERE
	"obj"."Id" = ? AND "obj"."Stamp" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -8

DELETE FROM
	"ConcurrencyTable" "obj"
WHERE
	"obj"."Id" = ? AND "obj"."Stamp" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyTable" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ConcurrencyTable"


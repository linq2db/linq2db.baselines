BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyFiltered"
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
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyFiltered" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyFiltered" "r"
SET
	"Stamp" = "r"."Stamp" + 1,
	"Value" = ?
WHERE
	"r"."Id" = 2 AND "r"."Id" = ? AND "r"."Stamp" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyFiltered" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyFiltered" "r"
SET
	"Stamp" = "r"."Stamp" + 1,
	"Value" = ?
WHERE
	"r"."Id" = 1 AND "r"."Id" = ? AND "r"."Stamp" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyFiltered" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyFiltered" "r"
WHERE
	"r"."Id" = 2 AND "r"."Id" = ? AND "r"."Stamp" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyFiltered" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyFiltered" "r"
WHERE
	"r"."Id" = 1 AND "r"."Id" = ? AND "r"."Stamp" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyFiltered" "t1"


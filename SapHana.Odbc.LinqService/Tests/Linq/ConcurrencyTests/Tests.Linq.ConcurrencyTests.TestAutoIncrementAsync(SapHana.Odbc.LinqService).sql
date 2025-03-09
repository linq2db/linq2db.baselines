﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -10
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyAutoIncrement"
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
	"ConcurrencyAutoIncrement" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyAutoIncrement" "obj"
SET
	"Stamp" = "obj"."Stamp" + 1,
	"Value" = ?
WHERE
	"obj"."Id" = ? AND "obj"."Stamp" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -9

UPDATE
	"ConcurrencyAutoIncrement" "obj"
SET
	"Stamp" = "obj"."Stamp" + 1,
	"Value" = ?
WHERE
	"obj"."Id" = ? AND "obj"."Stamp" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 3'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -9

UPDATE
	"ConcurrencyAutoIncrement" "obj"
SET
	"Stamp" = "obj"."Stamp" + 1,
	"Value" = ?
WHERE
	"obj"."Id" = ? AND "obj"."Stamp" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyAutoIncrement" "obj"
WHERE
	"obj"."Id" = ? AND "obj"."Stamp" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -8

DELETE FROM
	"ConcurrencyAutoIncrement" "obj"
WHERE
	"obj"."Id" = ? AND "obj"."Stamp" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyAutoIncrement" "t1"


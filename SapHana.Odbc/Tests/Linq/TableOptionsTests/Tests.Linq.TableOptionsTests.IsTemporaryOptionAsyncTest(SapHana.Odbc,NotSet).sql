﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

CREATE COLUMN TABLE "temp_table1"
(
	"ID"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Value Int -- Int32
SET     @Value = 2

INSERT INTO "temp_table1"
(
	"ID",
	"Value"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

CREATE COLUMN TABLE "temp_table2"
(
	"ID"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

INSERT INTO "temp_table2"
(
	"ID",
	"Value"
)
SELECT
	"t1"."ID",
	"t1"."Value"
FROM
	"temp_table1" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID",
	"t1"."Value"
FROM
	"temp_table1" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID",
	"t1"."Value"
FROM
	"temp_table2" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @Value Int -- Int32
SET     @Value = 3

INSERT INTO "temp_table1"
(
	"ID",
	"Value"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 3
DECLARE @Value Int -- Int32
SET     @Value = 3

INSERT INTO "temp_table1"
(
	"ID",
	"Value"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 4
DECLARE @Value Int -- Int32
SET     @Value = 5

INSERT INTO "temp_table1"
(
	"ID",
	"Value"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DELETE FROM "temp_table1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DELETE FROM "temp_table2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "temp_table2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "temp_table1"


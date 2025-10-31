-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "temp_table1"
(
	"ID"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

-- SapHana.Odbc SapHanaOdbc
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

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "temp_table2"
(
	"ID"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

-- SapHana.Odbc SapHanaOdbc

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

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID",
	"t1"."Value"
FROM
	"temp_table1" "t1"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID",
	"t1"."Value"
FROM
	"temp_table2" "t1"

-- SapHana.Odbc SapHanaOdbc
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

-- SapHana.Odbc SapHanaOdbc
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

-- SapHana.Odbc SapHanaOdbc
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

-- SapHana.Odbc SapHanaOdbc

DELETE FROM "temp_table1"

-- SapHana.Odbc SapHanaOdbc

DELETE FROM "temp_table2"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "temp_table2"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "temp_table1"


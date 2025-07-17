BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TempTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

CREATE COLUMN TABLE "TempTable"
(
	"ID" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 2

INSERT INTO "TempTable"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 3

INSERT INTO "TempTable"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 4

INSERT INTO "TempTable"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 5

INSERT INTO "TempTable"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 6

INSERT INTO "TempTable"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 1

INSERT INTO "TempTable"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 7

INSERT INTO "TempTable"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."ID"
FROM
	"Parent" "p"
		INNER JOIN "TempTable" "t" ON "p"."ParentID" = "t"."ID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "TempTable"


BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "test_in_1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "test_in_1"
(
	"ID" Integer     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1

INSERT INTO "test_in_1"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 3

INSERT INTO "test_in_1"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = NULL

INSERT INTO "test_in_1"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "test_in_2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "test_in_2"
(
	"ID" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1

INSERT INTO "test_in_2"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 2

INSERT INTO "test_in_2"
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
	"test_in_1" "t"
WHERE
	("t"."ID" IS NULL OR "t"."ID" NOT IN (
		SELECT
			"p"."ID"
		FROM
			"test_in_2" "p"
	))

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID"
FROM
	"test_in_1" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID"
FROM
	"test_in_2" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "test_in_2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "test_in_1"


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

DROP TABLE "test_in_2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "test_in_2"
(
	"ID" Integer     NULL,
	"GV" Integer     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @GV  -- Int32
SET     @GV = 1

INSERT INTO "test_in_2"
(
	"ID",
	"GV"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 2
DECLARE @GV  -- Int32
SET     @GV = 0

INSERT INTO "test_in_2"
(
	"ID",
	"GV"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = NULL
DECLARE @GV  -- Int32
SET     @GV = NULL

INSERT INTO "test_in_2"
(
	"ID",
	"GV"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."ID"
FROM
	"test_in_1" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					MIN("g_1"."ID") as "In_1"
				FROM
					"test_in_2" "g_1"
				GROUP BY
					"g_1"."GV"
			) "t1"
		WHERE
			"t"."ID" = "t1"."In_1" AND "t"."ID" IS NOT NULL AND "t1"."In_1" IS NOT NULL OR
			"t"."ID" IS NULL AND "t1"."In_1" IS NULL
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID"
FROM
	"test_in_1" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID",
	"t1"."GV"
FROM
	"test_in_2" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "test_in_2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "test_in_1"


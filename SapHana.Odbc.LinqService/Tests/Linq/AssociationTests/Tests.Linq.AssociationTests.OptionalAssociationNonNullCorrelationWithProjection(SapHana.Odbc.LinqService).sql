BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Table1"
(
	"ID"  Integer NOT NULL,
	"ID2" Integer     NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @ID2  -- Int32
SET     @ID2 = 1

INSERT INTO "Table1"
(
	"ID",
	"ID2"
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
DECLARE @ID2  -- Int32
SET     @ID2 = 2

INSERT INTO "Table1"
(
	"ID",
	"ID2"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Table2"
(
	"ID"  Integer NOT NULL,
	"ID3" Integer     NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @ID3  -- Int32
SET     @ID3 = 1

INSERT INTO "Table2"
(
	"ID",
	"ID3"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table3"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Table3"
(
	"ID" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1

INSERT INTO "Table3"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table4"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Table4"
(
	"ID"  Integer NOT NULL,
	"ID3" Integer     NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @ID3  -- Int32
SET     @ID3 = 1

INSERT INTO "Table4"
(
	"ID",
	"ID3"
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
DECLARE @ID3  -- Int32
SET     @ID3 = NULL

INSERT INTO "Table4"
(
	"ID",
	"ID3"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"a_Table2"."ID",
	"a_Table2"."ID3",
	CASE
		WHEN "a_Table2"."ID" IS NOT NULL AND "a_Table3"."ID" IS NOT NULL
			THEN 1
		ELSE 0
	END,
	"a_Table3"."ID"
FROM
	"Table1" "r"
		LEFT JOIN "Table2" "a_Table2" ON "r"."ID2" = "a_Table2"."ID"
		LEFT JOIN "Table3" "a_Table3" ON "a_Table2"."ID3" = "a_Table3"."ID"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Table4" "id"
		WHERE
			"a_Table3"."ID" = "id"."ID3" AND "id"."ID" = "r"."ID"
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table4"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table3"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Table1"


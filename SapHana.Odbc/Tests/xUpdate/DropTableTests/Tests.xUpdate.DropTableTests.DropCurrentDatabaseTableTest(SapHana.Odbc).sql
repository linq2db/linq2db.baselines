-- SapHana.Odbc SapHanaOdbc

DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE"DropTableTest"';
END

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "DropTableTest"
(
	"ID" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "DropTableTest"
(
	"ID"
)
VALUES
(
	123
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID"
FROM
	"DropTableTest" "t1"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DropTableTest"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID"
FROM
	"DropTableTest" "t1"


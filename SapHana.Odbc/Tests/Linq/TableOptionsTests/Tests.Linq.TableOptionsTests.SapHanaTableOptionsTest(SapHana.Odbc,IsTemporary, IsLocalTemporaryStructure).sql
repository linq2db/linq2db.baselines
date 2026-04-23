-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestTable"
(
	"Id"    Integer NOT NULL,
	"Value" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

-- SapHana.Odbc SapHanaOdbc

DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE"TestTable"';
END


-- SapHana.Odbc SapHanaOdbc
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "QualifiedNameTable2"';
END

-- SapHana.Odbc SapHanaOdbc
CREATE COLUMN TABLE "QualifiedNameTable2"
(
	"ID"    Integer NOT NULL,
	"Value" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Odbc SapHanaOdbc
DROP TABLE "QualifiedNameTable2"


-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TableWithPrimaryKey2"
(
	"Key" Integer NOT NULL,

	PRIMARY KEY ("Key")
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Key Int -- Int32
SET     @Key = 1

INSERT INTO "TableWithPrimaryKey2"
(
	"Key"
)
VALUES
(
	?
)

-- SapHana.Odbc SapHanaOdbc

DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE"TableWithPrimaryKey2"';
END


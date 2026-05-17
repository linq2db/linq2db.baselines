-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "FluentTemp_UpdateAsync"
(
	"ID"       Integer      NOT NULL,
	"Value"    NVarChar(20)     NULL,
	"LastName" NVarChar(20)     NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp_UpdateAsync"
(
	"ID",
	"Value",
	"LastName"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'John II'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'Dory'

UPDATE
	"FluentTemp_UpdateAsync" "t"
SET
	"Value" = ?,
	"LastName" = ?
WHERE
	"t"."ID" = 1

-- SapHana.Odbc SapHanaOdbc

DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_UpdateAsync"';
END


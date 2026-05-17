-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "FluentTemp_Cache"
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

INSERT INTO "FluentTemp_Cache"
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

SELECT
	"t"."ID",
	"t"."Value",
	"t"."LastName"
FROM
	"FluentTemp_Cache" "t"
WHERE
	"t"."ID" = 1

-- SapHana.Odbc SapHanaOdbc

DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_Cache"';
END

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "FluentTemp_Cache"
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

INSERT INTO "FluentTemp_Cache"
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

SELECT
	"t"."ID",
	"t"."Value",
	"t"."LastName"
FROM
	"FluentTemp_Cache" "t"
WHERE
	"t"."ID" = 1

-- SapHana.Odbc SapHanaOdbc

DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_Cache"';
END

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "FluentTemp_Cache"
(
	"ID"       Integer      NOT NULL,
	"Column"   NVarChar(20)     NULL,
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

INSERT INTO "FluentTemp_Cache"
(
	"ID",
	"Column",
	"LastName"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."ID",
	"t"."Column",
	"t"."LastName"
FROM
	"FluentTemp_Cache" "t"
WHERE
	"t"."ID" = 1

-- SapHana.Odbc SapHanaOdbc

DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_Cache"';
END

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "FluentTemp_Cache"
(
	"ID"       Integer      NOT NULL,
	"Column"   NVarChar(20)     NULL,
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

INSERT INTO "FluentTemp_Cache"
(
	"ID",
	"Column",
	"LastName"
)
VALUES
(
	?,
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."ID",
	"t"."Column",
	"t"."LastName"
FROM
	"FluentTemp_Cache" "t"
WHERE
	"t"."ID" = 1

-- SapHana.Odbc SapHanaOdbc

DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_Cache"';
END


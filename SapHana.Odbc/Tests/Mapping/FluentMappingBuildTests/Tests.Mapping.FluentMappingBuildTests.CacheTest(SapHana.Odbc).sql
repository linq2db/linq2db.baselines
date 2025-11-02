-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "FluentTemp"
(
	"ID"       Integer      NOT NULL,
	"Value"    NVarChar(20)     NULL,
	"LastName" NVarChar(20)     NULL
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
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
	"FluentTemp" "t"
WHERE
	"t"."ID" = 1

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "FluentTemp"

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "FluentTemp"
(
	"ID"       Integer      NOT NULL,
	"Value"    NVarChar(20)     NULL,
	"LastName" NVarChar(20)     NULL
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
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
	"FluentTemp" "t"
WHERE
	"t"."ID" = 1

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "FluentTemp"

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "FluentTemp"
(
	"ID"       Integer      NOT NULL,
	"Column"   NVarChar(20)     NULL,
	"LastName" NVarChar(20)     NULL
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
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
	"FluentTemp" "t"
WHERE
	"t"."ID" = 1

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "FluentTemp"

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "FluentTemp"
(
	"ID"       Integer      NOT NULL,
	"Column"   NVarChar(20)     NULL,
	"LastName" NVarChar(20)     NULL
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
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
	"FluentTemp" "t"
WHERE
	"t"."ID" = 1

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "FluentTemp"


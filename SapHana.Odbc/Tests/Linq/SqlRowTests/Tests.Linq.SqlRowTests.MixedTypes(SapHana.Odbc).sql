BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Mixed"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Mixed"
(
	"Int"    Integer       NOT NULL,
	"Str"    NVarChar(255)     NULL,
	"Date"   Timestamp     NOT NULL,
	"Double" Double        NOT NULL,
	"Bool"   TinyInt       NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Int  -- Int32
SET     @Int = 1
DECLARE @Str NVarChar(3) -- String
SET     @Str = 'One'
DECLARE @Date  -- DateTime
SET     @Date = '2001-01-01'
DECLARE @Double  -- Double
SET     @Double = 1
DECLARE @Bool  -- Byte
SET     @Bool = 1

INSERT INTO "Mixed"
(
	"Int",
	"Str",
	"Date",
	"Double",
	"Bool"
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Int  -- Int32
SET     @Int = 2
DECLARE @Str NVarChar(3) -- String
SET     @Str = 'Two'
DECLARE @Date  -- DateTime
SET     @Date = '2002-02-02'
DECLARE @Double  -- Double
SET     @Double = 2
DECLARE @Bool  -- Byte
SET     @Bool = 0

INSERT INTO "Mixed"
(
	"Int",
	"Str",
	"Date",
	"Double",
	"Bool"
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Mixed" "t"
WHERE
	"t"."Int" > 0 AND
	"t"."Str" = 'One' AND
	"t"."Double" = 1 AND
	"t"."Bool" = 1 AND
	EXISTS(
		SELECT
			*
		FROM
			"Mixed" "u"
		WHERE
			(2 > "u"."Int" OR 2 = "u"."Int" AND "u"."Date" > "t"."Date")
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Mixed"


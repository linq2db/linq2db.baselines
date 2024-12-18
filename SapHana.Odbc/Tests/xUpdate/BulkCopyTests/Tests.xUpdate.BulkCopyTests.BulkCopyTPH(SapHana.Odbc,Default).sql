BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TPHTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TPHTable"
(
	"Id"            Integer      NOT NULL,
	"Discriminator" Integer      NOT NULL,
	"Value1"        NVarChar(50)     NULL,
	"Value2"        NVarChar(50)     NULL,
	"Value3"        NVarChar(50)     NULL,
	"NullableBool"  VarChar(1)       NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Discriminator  -- Int32
SET     @Discriminator = 1
DECLARE @Value1 NVarChar(4) -- String
SET     @Value1 = 'Str1'

INSERT INTO "TPHTable"
(
	"Id",
	"Discriminator",
	"Value1"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Discriminator  -- Int32
SET     @Discriminator = 2
DECLARE @Value2 NVarChar(4) -- String
SET     @Value2 = 'Str2'

INSERT INTO "TPHTable"
(
	"Id",
	"Discriminator",
	"Value2"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Discriminator  -- Int32
SET     @Discriminator = 3
DECLARE @Value3 NVarChar(4) -- String
SET     @Value3 = 'Str3'
DECLARE @NullableBool VarChar(1) -- AnsiString
SET     @NullableBool = 'Y'

INSERT INTO "TPHTable"
(
	"Id",
	"Discriminator",
	"Value3",
	"NullableBool"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Discriminator",
	"t1"."Id",
	"t1"."Value3",
	"t1"."NullableBool",
	"t1"."Value2",
	"t1"."Value1"
FROM
	"TPHTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 1
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 2
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Discriminator" = 3
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value1" = 'Str1' AND "x"."Value1" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value2" = 'Str2' AND "x"."Value2" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Discriminator",
	"x"."Id",
	"x"."Value3",
	"x"."NullableBool",
	"x"."Value2",
	"x"."Value1"
FROM
	"TPHTable" "x"
WHERE
	"x"."Value3" = 'Str3' AND "x"."Value3" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TPHTable"


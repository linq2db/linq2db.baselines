﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Discriminator Int -- Int32
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
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Discriminator Int -- Int32
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
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Discriminator Int -- Int32
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
	"x"."Value1" = 'Str1'
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
	"x"."Value2" = 'Str2'
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
	"x"."Value3" = 'Str3'
LIMIT 2


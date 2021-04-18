﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Src"
(
	"Int"            Int           NOT NULL,
	"NullableInt"    Int               NULL,
	"String"         NVarChar(255)     NULL,
	"NullableString" NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Int_1 Integer(4) -- Int32
SET     @Int_1 = 2
DECLARE @NullableInt Integer(4) -- Int32
SET     @NullableInt = 2
DECLARE @String VarChar(3) -- String
SET     @String = 'abc'
DECLARE @NullableString VarChar(3) -- String
SET     @NullableString = 'abc'

INSERT INTO "Src"
(
	"Int",
	"NullableInt",
	"String",
	"NullableString"
)
VALUES
(
	@Int_1,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Int_1 Integer(4) -- Int32
SET     @Int_1 = 3
DECLARE @NullableInt Integer -- Int32
SET     @NullableInt = NULL
DECLARE @String VarChar(3) -- String
SET     @String = 'def'
DECLARE @NullableString VarChar -- String
SET     @NullableString = NULL

INSERT INTO "Src"
(
	"Int",
	"NullableInt",
	"String",
	"NullableString"
)
VALUES
(
	@Int_1,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value_1 Integer(4) -- Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IS DISTINCT FROM @value_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value_1 Integer(4) -- Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS DISTINCT FROM @value_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value_1 Integer(4) -- Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IS NOT DISTINCT FROM @value_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value_1 Integer(4) -- Int32
SET     @value_1 = 2

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS NOT DISTINCT FROM @value_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
END


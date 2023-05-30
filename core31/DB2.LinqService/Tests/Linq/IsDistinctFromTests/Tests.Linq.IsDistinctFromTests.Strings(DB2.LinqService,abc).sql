﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Src"
		(
			"Int"            Int           NOT NULL,
			"NullableInt"    Int               NULL,
			"String"         NVarChar(255)     NULL,
			"NullableString" NVarChar(255)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Int Integer(4) -- Int32
SET     @Int = 2
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
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Int Integer(4) -- Int32
SET     @Int = 3
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
	@Int,
	@NullableInt,
	@String,
	@NullableString
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."String" IS DISTINCT FROM @value

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableString" IS DISTINCT FROM @value

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."String" IS NOT DISTINCT FROM @value

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableString" IS NOT DISTINCT FROM @value

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
END


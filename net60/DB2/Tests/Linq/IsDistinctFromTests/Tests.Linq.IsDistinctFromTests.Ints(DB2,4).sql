BeforeExecute
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

INSERT INTO "Src"
(
	"Int",
	"NullableInt",
	"String",
	"NullableString"
)
VALUES
(2,2,'abc','abc'),
(3,NULL,'def',NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value_1 Integer(4) -- Int32
SET     @value_1 = 4

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IS DISTINCT FROM @value_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value_1 Integer(4) -- Int32
SET     @value_1 = 4

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."NullableInt" IS DISTINCT FROM @value_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value_1 Integer(4) -- Int32
SET     @value_1 = 4

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."Int" IS NOT DISTINCT FROM @value_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value_1 Integer(4) -- Int32
SET     @value_1 = 4

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


BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "StringTypesTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "StringTypesTable"
		(
			"Id"             Int          NOT NULL,
			"CharColumn"     Char(50)         NULL,
			"NCharColumn"    NChar(50)        NULL,
			"VarCharColumn"  VarChar(50)      NULL,
			"NVarCharColumn" NVarChar(50)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "StringTypesTable"
(
	"Id",
	"CharColumn",
	"NCharColumn",
	"VarCharColumn",
	"NVarCharColumn"
)
VALUES
(1,'someString','someString','someString','someString')

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @str VarChar(5) -- String
SET     @str = 'some%'
DECLARE @str_1 VarChar(5) -- String
SET     @str_1 = 'some%'
DECLARE @str_2 VarChar(5) -- String
SET     @str_2 = 'some%'
DECLARE @str_3 VarChar(5) -- String
SET     @str_3 = 'some%'

SELECT
	"t"."Id",
	"t"."CharColumn",
	"t"."NCharColumn",
	"t"."VarCharColumn",
	"t"."NVarCharColumn"
FROM
	"StringTypesTable" "t"
WHERE
	"t"."CharColumn" LIKE @str ESCAPE '~' AND
	"t"."NCharColumn" LIKE @str_1 ESCAPE '~' AND
	"t"."VarCharColumn" LIKE @str_2 ESCAPE '~' AND
	"t"."NVarCharColumn" LIKE @str_3 ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "StringTypesTable"';
END


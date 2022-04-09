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
DECLARE @str_4 Char(5) -- StringFixedLength
SET     @str_4 = 'some%'
DECLARE @str_5 Char(5) -- StringFixedLength
SET     @str_5 = 'some%'
DECLARE @str_6 VarChar(5) -- String
SET     @str_6 = 'some%'
DECLARE @str_7 VarChar(5) -- String
SET     @str_7 = 'some%'

SELECT
	"t"."Id",
	"t"."CharColumn",
	"t"."NCharColumn",
	"t"."VarCharColumn",
	"t"."NVarCharColumn"
FROM
	"StringTypesTable" "t"
WHERE
	"t"."CharColumn" LIKE @str_4 ESCAPE '~' AND
	"t"."NCharColumn" LIKE @str_5 ESCAPE '~' AND
	"t"."VarCharColumn" LIKE @str_6 ESCAPE '~' AND
	"t"."NVarCharColumn" LIKE @str_7 ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "StringTypesTable"';
END


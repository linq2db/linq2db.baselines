BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "CustomerBase"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "CustomerBase"
		(
			"Id"           Int           GENERATED ALWAYS AS IDENTITY NOT NULL,
			"ClientType"   NChar(6)                                   NOT NULL,
			"Name"         NVarChar(255)                                  NULL,
			"ContactEmail" NVarChar(255)                                  NULL,
			"Enabled"      smallint                                       NULL,

			CONSTRAINT "PK_CustomerBase" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @filter VarChar(6) -- String
SET     @filter = '%test%'
DECLARE @filter_1 VarChar(6) -- String
SET     @filter_1 = '%test%'

SELECT
	"q"."Id",
	"q"."Name",
	"q"."ContactEmail",
	"q"."Enabled"
FROM
	"CustomerBase" "q"
WHERE
	"q"."ClientType" = 'Client' AND ("q"."Name" LIKE @filter ESCAPE '~' OR "q"."ContactEmail" LIKE @filter_1 ESCAPE '~')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "CustomerBase"';
END


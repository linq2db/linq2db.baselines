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
			"Id"    Int         NOT NULL,
			"Int"   Int             NULL,
			"Enum"  NVarChar(5)     NULL,
			"CEnum" VarChar(20)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
VALUES
(1,NULL,NULL,NULL),
(2,2,'TWO','___Value2___')

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @CEnum VarChar -- String
SET     @CEnum = NULL
DECLARE @CEnum_1 VarChar -- String
SET     @CEnum_1 = NULL

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."CEnum" IN (@CEnum, @CEnum_1)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @CEnum VarChar -- String
SET     @CEnum = NULL
DECLARE @CEnum_1 VarChar -- String
SET     @CEnum_1 = NULL

SELECT
	Count(*)
FROM
	"Src" "s"
WHERE
	"s"."CEnum" NOT IN (@CEnum, @CEnum_1)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
END


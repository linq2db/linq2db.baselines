﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "NestingA"
(
	"Property1" NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "NestingB"
(
	"Property1" NVarChar(255)     NULL,
	"Property2" NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "NestingC"
(
	"Property1" NVarChar(255)     NULL,
	"Property2" NVarChar(255)     NULL,
	"Property3" NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

WITH CTE_1 ("Property2")
AS
(
	SELECT
		"a"."Property2"
	FROM
		"NestingC" "a"
)
SELECT
	"c1"."Property2",
	"t_1"."Property2",
	"t_1"."Property3"
FROM
	CTE_1 "c1",
	"NestingC" "t",
	"NestingC" "t_1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "NestingC"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "NestingB"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "NestingA"';
END


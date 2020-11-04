﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "SampleClass"
		(
			"Id"     Int          NOT NULL,
			"Value1" NVarChar(50)     NULL,
			"Value2" NVarChar(50)     NULL,
			"Value3" NVarChar(50)     NULL,
			"Value4" VarChar(50)      NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(1,'V1','V2',NULL,'V4'),
(2,NULL,'Z2',NULL,NULL),
(3,'Z1',NULL,NULL,'Z4')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t"."Value1", ' -> ') WITHIN GROUP (ORDER BY "t"."Value1")
FROM
	"SampleClass" "t"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t"."Value1", ' -> ') WITHIN GROUP (ORDER BY "t"."Value1")
FROM
	"SampleClass" "t"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t"."Value1", ' -> ') WITHIN GROUP (ORDER BY "t"."Value1" DESC)
FROM
	"SampleClass" "t"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG("t"."Value1", ' -> ') WITHIN GROUP (ORDER BY "t"."Value1" DESC)
FROM
	"SampleClass" "t"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
END


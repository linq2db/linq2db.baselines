BeforeExecute
-- DB2 DB2.LUW DB2LUW

TRUNCATE TABLE "test_temp" IMMEDIATE

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."Field1"
FROM
	"test_temp" "t1"
ORDER BY
	"t1".ID
OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 

BeforeExecute
-- DB2 DB2.LUW DB2LUW

TRUNCATE TABLE "test_temp" IMMEDIATE

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."Field1"
FROM
	"test_temp" "t1"
ORDER BY
	"t1".ID
OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 


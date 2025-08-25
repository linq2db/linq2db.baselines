BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TestIdTrun"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

CREATE TABLE "TestIdTrun"
(
	ID       Int             GENERATED ALWAYS AS IDENTITY NOT NULL,
	"Field1" Decimal(18, 10)                              NOT NULL,

	CONSTRAINT "PK_TestIdTrun" PRIMARY KEY (ID)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1".ID,
	"t1"."Field1"
FROM
	"TestIdTrun" "t1"
ORDER BY
	"t1".ID
OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

TRUNCATE TABLE "TestIdTrun" IMMEDIATE

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

ALTER TABLE "TestIdTrun" ALTER ID RESTART WITH 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1".ID,
	"t1"."Field1"
FROM
	"TestIdTrun" "t1"
ORDER BY
	"t1".ID
OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

DROP TABLE "TestIdTrun"


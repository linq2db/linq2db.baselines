﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TestIdTrun"';
END

BeforeExecute
--  DB2 DB2.LUW DB2LUW

CREATE TABLE "TestIdTrun"
(
	ID       Int             GENERATED ALWAYS AS IDENTITY NOT NULL,
	"Field1" Decimal(18, 10)                              NOT NULL,

	CONSTRAINT "PK_TestIdTrun" PRIMARY KEY (ID)
)

BeforeExecute
--  DB2 DB2.LUW DB2LUW

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
--  DB2 DB2.LUW DB2LUW

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."Field1"
FROM
	"TestIdTrun" "t1"
ORDER BY
	"t1".ID
OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 

BeforeExecute
--  DB2 DB2.LUW DB2LUW

TRUNCATE TABLE "TestIdTrun" IMMEDIATE

BeforeExecute
--  DB2 DB2.LUW DB2LUW

ALTER TABLE "TestIdTrun" ALTER ID RESTART WITH 1

BeforeExecute
--  DB2 DB2.LUW DB2LUW

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
--  DB2 DB2.LUW DB2LUW

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."Field1"
FROM
	"TestIdTrun" "t1"
ORDER BY
	"t1".ID
OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 

BeforeExecute
--  DB2 DB2.LUW DB2LUW

DROP TABLE "TestIdTrun"


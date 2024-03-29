﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TestIdTrun"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "TestIdTrun"
(
	ID       Int     GENERATED ALWAYS AS IDENTITY NOT NULL,
	"Field1" Decimal                              NOT NULL,

	CONSTRAINT "PK_TestIdTrun" PRIMARY KEY (ID)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"t2".ID,
	"t2"."Field1"
FROM
	(
		SELECT
			"t1".ID,
			"t1"."Field1",
			ROW_NUMBER() OVER (ORDER BY "t1".ID) as RN
		FROM
			"TestIdTrun" "t1"
	) "t2"
WHERE
	"t2".RN > @skip AND "t2".RN <= @take

BeforeExecute
-- DB2 DB2.LUW DB2LUW

TRUNCATE TABLE "TestIdTrun" IMMEDIATE

BeforeExecute
-- DB2 DB2.LUW DB2LUW

ALTER TABLE "TestIdTrun" ALTER ID RESTART WITH 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"t2".ID,
	"t2"."Field1"
FROM
	(
		SELECT
			"t1".ID,
			"t1"."Field1",
			ROW_NUMBER() OVER (ORDER BY "t1".ID) as RN
		FROM
			"TestIdTrun" "t1"
	) "t2"
WHERE
	"t2".RN > @skip AND "t2".RN <= @take

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TestIdTrun"


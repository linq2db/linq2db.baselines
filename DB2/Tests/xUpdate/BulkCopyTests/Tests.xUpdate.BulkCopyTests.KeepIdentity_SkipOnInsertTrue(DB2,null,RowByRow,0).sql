﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

ALTER TABLE AllTypes ALTER COLUMN ID RESTART WITH 3

BeforeExecute
--  DB2 DB2.LUW DB2LUW

ALTER TABLE "KeepIdentityTest" ALTER COLUMN "ID" RESTART WITH 1

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @Value Integer(4) -- Int32
SET     @Value = 0

SELECT
	ID
FROM
	NEW TABLE
	(
		INSERT INTO "KeepIdentityTest"
		(
			"Value"
		)
		VALUES
		(
			@Value
		)
	)

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @Value Integer(4) -- Int32
SET     @Value = 200

INSERT INTO "KeepIdentityTest"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @Value Integer(4) -- Int32
SET     @Value = 300

INSERT INTO "KeepIdentityTest"
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @lastId Integer(4) -- Int32
SET     @lastId = 1

SELECT
	"t1".ID,
	"t1"."Value"
FROM
	"KeepIdentityTest" "t1"
WHERE
	"t1".ID > @lastId
ORDER BY
	"t1".ID

BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @lastId Integer(4) -- Int32
SET     @lastId = 1

DELETE FROM
	"KeepIdentityTest" "t1"
WHERE
	"t1".ID >= @lastId


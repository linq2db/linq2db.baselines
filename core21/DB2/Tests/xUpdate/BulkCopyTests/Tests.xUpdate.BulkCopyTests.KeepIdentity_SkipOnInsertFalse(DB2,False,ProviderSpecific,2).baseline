BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value_1 Integer(4) -- Int32
SET     @Value_1 = 0

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
			@Value_1
		)
	)

BeforeExecute
INSERT BULK "KeepIdentityTest"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @lastId Integer(4) -- Int32
SET     @lastId = 82

SELECT
	"_".ID,
	"_"."Value"
FROM
	"KeepIdentityTest" "_"
WHERE
	"_".ID > @lastId
ORDER BY
	"_".ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @lastId Integer(4) -- Int32
SET     @lastId = 82

DELETE FROM
	"KeepIdentityTest" "t1"
WHERE
	"t1".ID >= @lastId


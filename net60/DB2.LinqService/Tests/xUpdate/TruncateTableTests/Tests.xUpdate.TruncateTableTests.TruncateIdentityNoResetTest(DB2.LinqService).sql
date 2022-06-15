BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "test_temp"
		(
			ID       Int     GENERATED ALWAYS AS IDENTITY NOT NULL,
			"Field1" Decimal                              NOT NULL,

			CONSTRAINT "PK_test_temp" PRIMARY KEY (ID)
		)
	';
END

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
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @skip_1 Integer(4) -- Int32
SET     @skip_1 = 3

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
			"test_temp" "t1"
	) "t2"
WHERE
	"t2".RN > @skip AND "t2".RN <= @skip_1

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
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @skip_1 Integer(4) -- Int32
SET     @skip_1 = 3

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
			"test_temp" "t1"
	) "t2"
WHERE
	"t2".RN > @skip AND "t2".RN <= @skip_1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "test_temp"';
END


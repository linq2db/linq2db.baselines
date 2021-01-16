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

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "test_temp"';
END


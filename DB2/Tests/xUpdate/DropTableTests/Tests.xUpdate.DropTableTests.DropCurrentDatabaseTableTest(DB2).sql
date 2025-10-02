BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "DropTableTest"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "DropTableTest"
(
	ID Int NOT NULL,

	CONSTRAINT "PK_DropTableTest" PRIMARY KEY (ID)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "DropTableTest"
(
	ID
)
VALUES
(
	123
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID
FROM
	"DropTableTest" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "DropTableTest"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID
FROM
	"DropTableTest" "t1"


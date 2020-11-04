BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "DropTableTestID"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "DropTableTestID"
(
	ID  Int GENERATED ALWAYS AS IDENTITY NOT NULL,
	ID1 Int                              NOT NULL,

	CONSTRAINT "PK_DropTableTestID" PRIMARY KEY (ID)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "DropTableTestID"
(
	ID1
)
VALUES
(
	2
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t".ID,
	"t".ID1
FROM
	"DropTableTestID" "t"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "DropTableTestID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1".ID1
FROM
	"DropTableTestID" "t1"


-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TestTable"';
END

-- DB2 DB2.LUW DB2LUW

CREATE TABLE "TestTable"
(
	ID          Int           GENERATED ALWAYS AS IDENTITY NOT NULL,
	"Field1"    NVarChar(50)                                   NULL,
	"Field2"    NVarChar(255)                                  NULL,
	"CreatedOn" timestamp                                      NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY (ID)
)

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."Field1",
	"t1"."Field2",
	"t1"."CreatedOn"
FROM
	"TestTable" "t1"

-- DB2 DB2.LUW DB2LUW

DROP TABLE "TestTable"


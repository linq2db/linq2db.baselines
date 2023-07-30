BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TestTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

CREATE TABLE "TestTable"
(
	ID          Int           GENERATED ALWAYS AS IDENTITY NOT NULL,
	"Field1"    NVarChar(50)                                   NULL,
	"Field2"    NVarChar(255)                                  NULL,
	"CreatedOn" timestamp                                      NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY (ID)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1".ID,
	"t1"."Field1",
	"t1"."Field2",
	"t1"."CreatedOn"
FROM
	"TestTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

DROP TABLE "TestTable"


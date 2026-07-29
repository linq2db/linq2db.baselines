-- DB2 DB2.LUW DB2LUW
CREATE TABLE "temp_table_1"
(
	ID      Int           NOT NULL,
	"Value" NVarChar(255)     NULL,

	CONSTRAINT "PK_temp_table_1" PRIMARY KEY (ID)
)

-- DB2 DB2.LUW DB2LUW
INSERT INTO "temp_table_1"
(
	ID,
	"Value"
)
VALUES
(1,'Value')

-- DB2 DB2.LUW DB2LUW
CREATE TABLE "temp_table_2"
(
	"Value" NVarChar(50) NOT NULL,

	CONSTRAINT "PK_temp_table_2" PRIMARY KEY ("Value")
)

-- DB2 DB2.LUW DB2LUW
INSERT INTO "temp_table_2"
(
	"Value"
)
SELECT
	(
		SELECT
			"c_1"."Value"
		FROM
			"temp_table_1" "c_1"
		WHERE
			"gr".ID = "c_1".ID
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"temp_table_1" "gr"

-- DB2 DB2.LUW DB2LUW
BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "temp_table_2"';
END

-- DB2 DB2.LUW DB2LUW
BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "temp_table_1"';
END


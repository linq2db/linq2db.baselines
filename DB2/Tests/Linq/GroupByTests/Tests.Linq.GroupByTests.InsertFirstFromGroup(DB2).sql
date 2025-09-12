BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "temp_table_1"
(
	ID      Int           NOT NULL,
	"Value" NVarChar(255)     NULL,

	CONSTRAINT "PK_temp_table_1" PRIMARY KEY (ID)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "temp_table_1"
(
	ID,
	"Value"
)
VALUES
(1,'Value')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "temp_table_2"
(
	"Value" NVarChar(50) NOT NULL,

	CONSTRAINT "PK_temp_table_2" PRIMARY KEY ("Value")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "temp_table_2"
(
	"Value"
)
SELECT
	"t1"."Value_1"
FROM
	(
		SELECT
			"gr".ID
		FROM
			"temp_table_1" "gr"
		GROUP BY
			"gr".ID
	) "gr_1"
		INNER JOIN (
			SELECT
				"c_1"."Value" as "Value_1",
				ROW_NUMBER() OVER (PARTITION BY "c_1".ID ORDER BY "c_1".ID) as "rn",
				"c_1".ID
			FROM
				"temp_table_1" "c_1"
		) "t1" ON "gr_1".ID = "t1".ID AND "t1"."rn" <= 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "temp_table_2"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "temp_table_1"';
END


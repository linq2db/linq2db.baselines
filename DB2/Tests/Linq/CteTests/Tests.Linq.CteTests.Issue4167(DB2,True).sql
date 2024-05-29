BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4167Table"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4167Table"
		(
			ID          Int           NOT NULL,
			"Value"     NVarChar(255)     NULL,
			"EnumValue" Int               NULL,

			CONSTRAINT "PK_Issue4167Table" PRIMARY KEY (ID)
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue4167Table"
(
	ID,
	"Value",
	"EnumValue"
)
VALUES
(1,'000001',0),
(2,'000001',3),
(3,'000001',NULL),
(4,'000002',0)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

WITH CTE_1 ("EnumValue")
AS
(
	SELECT
		CASE
			WHEN "g_1"."EnumValue" IS NOT NULL THEN "g_1"."EnumValue"
			ELSE 0
		END
	FROM
		"Issue4167Table" "g_1"
	WHERE
		"g_1"."Value" = '000001'
	GROUP BY
		"g_1"."Value",
		"g_1"."EnumValue"
)
SELECT
	"t1"."EnumValue"
FROM
	CTE_1 "t1"
ORDER BY
	"t1"."EnumValue"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4167Table"';
END


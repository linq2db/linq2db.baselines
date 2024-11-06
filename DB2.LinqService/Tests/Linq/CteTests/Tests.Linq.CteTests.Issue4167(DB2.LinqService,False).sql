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
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1
DECLARE @Value VarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Integer(4) -- Int32
SET     @EnumValue = 0

INSERT INTO "Issue4167Table"
(
	ID,
	"Value",
	"EnumValue"
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 2
DECLARE @Value VarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Integer(4) -- Int32
SET     @EnumValue = 3

INSERT INTO "Issue4167Table"
(
	ID,
	"Value",
	"EnumValue"
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3
DECLARE @Value VarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Integer -- Int32
SET     @EnumValue = NULL

INSERT INTO "Issue4167Table"
(
	ID,
	"Value",
	"EnumValue"
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 4
DECLARE @Value VarChar(6) -- String
SET     @Value = '000002'
DECLARE @EnumValue Integer(4) -- Int32
SET     @EnumValue = 0

INSERT INTO "Issue4167Table"
(
	ID,
	"Value",
	"EnumValue"
)
VALUES
(
	@ID,
	@Value,
	@EnumValue
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."EnumValue"
FROM
	(
		SELECT
			CASE
				WHEN "r"."EnumValue" IS NOT NULL THEN "r"."EnumValue"
				ELSE 0
			END as "EnumValue"
		FROM
			"Issue4167Table" "r"
		WHERE
			"r"."Value" = '000001'
		GROUP BY
			"r"."Value",
			"r"."EnumValue"
	) "t1"
ORDER BY
	"t1"."EnumValue"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4167Table"';
END


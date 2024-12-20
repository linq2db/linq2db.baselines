﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "gt_s_one"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "gt_s_one"
		(
			"id"   Int           NOT NULL,
			"col1" NVarChar(100)     NULL,
			"col2" NVarChar(100)     NULL,
			"col3" NVarChar(100)     NULL,
			"col4" NVarChar(100)     NULL,
			"col5" NVarChar(100)     NULL,
			"col6" NVarChar(100)     NULL,

			CONSTRAINT "PK_gt_s_one" PRIMARY KEY ("id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "gt_s_one_target"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "gt_s_one_target"
		(
			"id"   Int           NOT NULL,
			"col1" NVarChar(100)     NULL,
			"col2" NVarChar(100)     NULL,
			"col3" NVarChar(100)     NULL,
			"col4" NVarChar(100)     NULL,
			"col5" NVarChar(100)     NULL,
			"col6" NVarChar(100)     NULL,

			CONSTRAINT "PK_gt_s_one_target" PRIMARY KEY ("id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "access_mode"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "access_mode"
		(
			"id"   Int           NOT NULL,
			"code" NVarChar(255)     NULL,

			CONSTRAINT "PK_access_mode" PRIMARY KEY ("id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

UPDATE
	"gt_s_one_target"
SET
	("col1", "col2", "col3", "col4", "col5", "col6") = (
		SELECT
			"x_1"."col1",
			"x_1"."col2",
			REPLACE("x_1"."col3", 'auth.', ''),
			"x_1"."col4",
			CASE
				WHEN "x_1"."col3" = 'empty' THEN '1'
				ELSE '0'
			END,
			CASE
				WHEN "x_1"."col3" = 'empty' THEN ''
				ELSE RTrim(Char("y1_1"."id"))
			END
		FROM
			"gt_s_one" "x_1"
				INNER JOIN "gt_s_one_target" "t2_1" ON "x_1"."id" = "t2_1"."id"
				LEFT JOIN "access_mode" "y1_1" ON Upper(REPLACE("x_1"."col3", 'auth.', '')) = Upper("y1_1"."code") OR Upper(REPLACE("x_1"."col3", 'auth.', '')) IS NULL AND Upper("y1_1"."code") IS NULL
		WHERE
			"gt_s_one_target"."id" = "t2_1"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"gt_s_one" "x"
				INNER JOIN "gt_s_one_target" "t2" ON "x"."id" = "t2"."id"
				LEFT JOIN "access_mode" "y1" ON Upper(REPLACE("x"."col3", 'auth.', '')) = Upper("y1"."code") OR Upper(REPLACE("x"."col3", 'auth.', '')) IS NULL AND Upper("y1"."code") IS NULL
		WHERE
			"gt_s_one_target"."id" = "t2"."id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "access_mode"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "gt_s_one_target"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "gt_s_one"';
END


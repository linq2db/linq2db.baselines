BeforeExecute
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
	"gt_s_one"
SET
	("gt_s_one"."col1", "gt_s_one"."col2", "gt_s_one"."col3", "gt_s_one"."col4", "gt_s_one"."col5", "gt_s_one"."col6") = (
		SELECT
			"x"."col1",
			"x"."col2",
			Replace("x"."col3", 'auth.', ''),
			"x"."col4",
			CASE
				WHEN "x"."col3" = 'empty' THEN '1'
				ELSE '0'
			END,
			CASE
				WHEN "x"."col3" = 'empty' THEN ''
				ELSE RTrim(Char("am"."id"))
			END
		FROM
			"gt_s_one" "x"
				LEFT JOIN "access_mode" "am" ON (Upper(Replace("x"."col3", 'auth.', '')) = Upper("am"."code") OR Upper(Replace("x"."col3", 'auth.', '')) IS NULL AND Upper("am"."code") IS NULL)
		WHERE
			"gt_s_one"."id" = "x"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"gt_s_one" "x_1"
				LEFT JOIN "access_mode" "am_1" ON (Upper(Replace("x_1"."col3", 'auth.', '')) = Upper("am_1"."code") OR Upper(Replace("x_1"."col3", 'auth.', '')) IS NULL AND Upper("am_1"."code") IS NULL)
		WHERE
			"gt_s_one"."id" = "x_1"."id"
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
	EXECUTE IMMEDIATE 'DROP TABLE "gt_s_one"';
END


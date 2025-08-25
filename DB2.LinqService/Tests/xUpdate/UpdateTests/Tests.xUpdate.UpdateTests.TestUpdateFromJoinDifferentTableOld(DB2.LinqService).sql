BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

UPDATE
	"gt_s_one_target"
SET
	("col1", "col2", "col3", "col4", "col5", "col6") = (
		SELECT
			"x_1"."col1",
			"x_1"."col2",
			Replace("x_1"."col3", 'auth.', ''),
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
				LEFT JOIN "access_mode" "y1_1" ON Upper(Replace("x_1"."col3", 'auth.', '')) = Upper("y1_1"."code") OR "x_1"."col3" IS NULL AND "y1_1"."code" IS NULL
		WHERE
			"x_1"."id" = "gt_s_one_target"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"gt_s_one" "x"
				LEFT JOIN "access_mode" "y1" ON Upper(Replace("x"."col3", 'auth.', '')) = Upper("y1"."code") OR "x"."col3" IS NULL AND "y1"."code" IS NULL
		WHERE
			"x"."id" = "gt_s_one_target"."id"
	)


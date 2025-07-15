BeforeExecute
-- Firebird.2.5 Firebird

UPDATE
	"gt_s_one_target"
SET
	"col1" = (
		SELECT
			"x_1"."col1"
		FROM
			"gt_s_one" "x_1"
				LEFT JOIN "access_mode" "y1_1" ON Upper(Replace("x_1"."col3", 'auth.', '')) = Upper("y1_1"."code") OR "x_1"."col3" IS NULL AND "y1_1"."code" IS NULL
		WHERE
			"x_1"."id" = "gt_s_one_target"."id"
	),
	"col2" = (
		SELECT
			"x_2"."col2"
		FROM
			"gt_s_one" "x_2"
				LEFT JOIN "access_mode" "y1_2" ON Upper(Replace("x_2"."col3", 'auth.', '')) = Upper("y1_2"."code") OR "x_2"."col3" IS NULL AND "y1_2"."code" IS NULL
		WHERE
			"x_2"."id" = "gt_s_one_target"."id"
	),
	"col3" = (
		SELECT
			Replace("x_3"."col3", 'auth.', '')
		FROM
			"gt_s_one" "x_3"
				LEFT JOIN "access_mode" "y1_3" ON Upper(Replace("x_3"."col3", 'auth.', '')) = Upper("y1_3"."code") OR "x_3"."col3" IS NULL AND "y1_3"."code" IS NULL
		WHERE
			"x_3"."id" = "gt_s_one_target"."id"
	),
	"col4" = (
		SELECT
			"x_4"."col4"
		FROM
			"gt_s_one" "x_4"
				LEFT JOIN "access_mode" "y1_4" ON Upper(Replace("x_4"."col3", 'auth.', '')) = Upper("y1_4"."code") OR "x_4"."col3" IS NULL AND "y1_4"."code" IS NULL
		WHERE
			"x_4"."id" = "gt_s_one_target"."id"
	),
	"col5" = (
		SELECT
			CASE
				WHEN "x_5"."col3" = 'empty' THEN '1'
				ELSE '0'
			END
		FROM
			"gt_s_one" "x_5"
				LEFT JOIN "access_mode" "y1_5" ON Upper(Replace("x_5"."col3", 'auth.', '')) = Upper("y1_5"."code") OR "x_5"."col3" IS NULL AND "y1_5"."code" IS NULL
		WHERE
			"x_5"."id" = "gt_s_one_target"."id"
	),
	"col6" = (
		SELECT
			CASE
				WHEN "x_6"."col3" = 'empty' THEN ''
				ELSE "y1_6"."id"
			END
		FROM
			"gt_s_one" "x_6"
				LEFT JOIN "access_mode" "y1_6" ON Upper(Replace("x_6"."col3", 'auth.', '')) = Upper("y1_6"."code") OR "x_6"."col3" IS NULL AND "y1_6"."code" IS NULL
		WHERE
			"x_6"."id" = "gt_s_one_target"."id"
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


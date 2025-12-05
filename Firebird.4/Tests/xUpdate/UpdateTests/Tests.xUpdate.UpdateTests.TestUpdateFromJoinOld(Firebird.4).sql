-- Firebird.4 Firebird4

UPDATE
	"gt_s_one"
SET
	"col1" = "gt_s_one"."col1",
	"col2" = "gt_s_one"."col2",
	"col3" = Replace("gt_s_one"."col3", 'auth.', ''),
	"col4" = "gt_s_one"."col4",
	"col5" = CASE
		WHEN "gt_s_one"."col3" = 'empty' THEN '1'
		ELSE '0'
	END,
	"col6" = (
		SELECT
			CASE
				WHEN "gt_s_one"."col3" = 'empty' THEN ''
				ELSE "y1_1"."id"
			END
		FROM
			"gt_s_one" "x_1"
				LEFT JOIN "access_mode" "y1_1" ON Upper(Replace("x_1"."col3", 'auth.', '')) = Upper("y1_1"."code") OR "x_1"."col3" IS NULL AND "y1_1"."code" IS NULL
		WHERE
			"gt_s_one"."id" = "x_1"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"gt_s_one" "x"
				LEFT JOIN "access_mode" "y1" ON Upper(Replace("x"."col3", 'auth.', '')) = Upper("y1"."code") OR "x"."col3" IS NULL AND "y1"."code" IS NULL
		WHERE
			"gt_s_one"."id" = "x"."id"
	)


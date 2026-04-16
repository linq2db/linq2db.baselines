-- Firebird.3 Firebird3

UPDATE
	"gt_s_one_target"
SET
	"col1" = (
		SELECT
			"x_1"."col1"
		FROM
			"gt_s_one" "x_1"
				INNER JOIN "gt_s_one_target" "t2_1" ON "x_1"."id" = "t2_1"."id"
				LEFT JOIN "access_mode" "y1_1" ON Upper(Replace("x_1"."col3", 'auth.', '')) = Upper("y1_1"."code") OR "x_1"."col3" IS NULL AND "y1_1"."code" IS NULL
		WHERE
			"gt_s_one_target"."id" = "t2_1"."id"
	),
	"col2" = (
		SELECT
			"x_2"."col2"
		FROM
			"gt_s_one" "x_2"
				INNER JOIN "gt_s_one_target" "t2_2" ON "x_2"."id" = "t2_2"."id"
				LEFT JOIN "access_mode" "y1_2" ON Upper(Replace("x_2"."col3", 'auth.', '')) = Upper("y1_2"."code") OR "x_2"."col3" IS NULL AND "y1_2"."code" IS NULL
		WHERE
			"gt_s_one_target"."id" = "t2_2"."id"
	),
	"col3" = Replace((
		SELECT
			"x_3"."col3"
		FROM
			"gt_s_one" "x_3"
				INNER JOIN "gt_s_one_target" "t2_3" ON "x_3"."id" = "t2_3"."id"
				LEFT JOIN "access_mode" "y1_3" ON Upper(Replace("x_3"."col3", 'auth.', '')) = Upper("y1_3"."code") OR "x_3"."col3" IS NULL AND "y1_3"."code" IS NULL
		WHERE
			"gt_s_one_target"."id" = "t2_3"."id"
	), 'auth.', ''),
	"col4" = (
		SELECT
			"x_4"."col4"
		FROM
			"gt_s_one" "x_4"
				INNER JOIN "gt_s_one_target" "t2_4" ON "x_4"."id" = "t2_4"."id"
				LEFT JOIN "access_mode" "y1_4" ON Upper(Replace("x_4"."col3", 'auth.', '')) = Upper("y1_4"."code") OR "x_4"."col3" IS NULL AND "y1_4"."code" IS NULL
		WHERE
			"gt_s_one_target"."id" = "t2_4"."id"
	),
	"col5" = CASE
		WHEN (
			SELECT
				"x_5"."col3"
			FROM
				"gt_s_one" "x_5"
					INNER JOIN "gt_s_one_target" "t2_5" ON "x_5"."id" = "t2_5"."id"
					LEFT JOIN "access_mode" "y1_5" ON Upper(Replace("x_5"."col3", 'auth.', '')) = Upper("y1_5"."code") OR "x_5"."col3" IS NULL AND "y1_5"."code" IS NULL
			WHERE
				"gt_s_one_target"."id" = "t2_5"."id"
		) = 'empty'
			THEN '1'
		ELSE '0'
	END,
	"col6" = CASE
		WHEN (
			SELECT
				"x_6"."col3"
			FROM
				"gt_s_one" "x_6"
					INNER JOIN "gt_s_one_target" "t2_6" ON "x_6"."id" = "t2_6"."id"
					LEFT JOIN "access_mode" "y1_6" ON Upper(Replace("x_6"."col3", 'auth.', '')) = Upper("y1_6"."code") OR "x_6"."col3" IS NULL AND "y1_6"."code" IS NULL
			WHERE
				"gt_s_one_target"."id" = "t2_6"."id"
		) = 'empty'
			THEN ''
		ELSE (
			SELECT
				"y1_7"."id"
			FROM
				"gt_s_one" "x_7"
					INNER JOIN "gt_s_one_target" "t2_7" ON "x_7"."id" = "t2_7"."id"
					LEFT JOIN "access_mode" "y1_7" ON Upper(Replace("x_7"."col3", 'auth.', '')) = Upper("y1_7"."code") OR "x_7"."col3" IS NULL AND "y1_7"."code" IS NULL
			WHERE
				"gt_s_one_target"."id" = "t2_7"."id"
		)
	END
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"gt_s_one" "x"
				INNER JOIN "gt_s_one_target" "t2" ON "x"."id" = "t2"."id"
				LEFT JOIN "access_mode" "y1" ON Upper(Replace("x"."col3", 'auth.', '')) = Upper("y1"."code") OR "x"."col3" IS NULL AND "y1"."code" IS NULL
		WHERE
			"gt_s_one_target"."id" = "t2"."id"
	)


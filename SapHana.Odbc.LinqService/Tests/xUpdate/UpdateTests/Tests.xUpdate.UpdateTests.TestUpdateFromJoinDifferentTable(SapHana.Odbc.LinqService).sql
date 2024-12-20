BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "gt_s_one"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "gt_s_one"
(
	"id"   Integer       NOT NULL,
	"col1" NVarChar(100)     NULL,
	"col2" NVarChar(100)     NULL,
	"col3" NVarChar(100)     NULL,
	"col4" NVarChar(100)     NULL,
	"col5" NVarChar(100)     NULL,
	"col6" NVarChar(100)     NULL,

	PRIMARY KEY ("id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "gt_s_one_target"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "gt_s_one_target"
(
	"id"   Integer       NOT NULL,
	"col1" NVarChar(100)     NULL,
	"col2" NVarChar(100)     NULL,
	"col3" NVarChar(100)     NULL,
	"col4" NVarChar(100)     NULL,
	"col5" NVarChar(100)     NULL,
	"col6" NVarChar(100)     NULL,

	PRIMARY KEY ("id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "access_mode"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "access_mode"
(
	"id"   Integer       NOT NULL,
	"code" NVarChar(255)     NULL,

	PRIMARY KEY ("id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

UPDATE
	"gt_s_one_target"
SET
	"col1" = (
		SELECT
			"x_1"."col1"
		FROM
			"gt_s_one" "x_1"
				INNER JOIN "gt_s_one_target" "t2_1" ON "x_1"."id" = "t2_1"."id"
				LEFT JOIN "access_mode" "y1_1" ON Upper(REPLACE("x_1"."col3", 'auth.', '')) = Upper("y1_1"."code") OR Upper(REPLACE("x_1"."col3", 'auth.', '')) IS NULL AND Upper("y1_1"."code") IS NULL
		WHERE
			"gt_s_one_target"."id" = "t2_1"."id"
	),
	"col2" = (
		SELECT
			"x_2"."col2"
		FROM
			"gt_s_one" "x_2"
				INNER JOIN "gt_s_one_target" "t2_2" ON "x_2"."id" = "t2_2"."id"
				LEFT JOIN "access_mode" "y1_2" ON Upper(REPLACE("x_2"."col3", 'auth.', '')) = Upper("y1_2"."code") OR Upper(REPLACE("x_2"."col3", 'auth.', '')) IS NULL AND Upper("y1_2"."code") IS NULL
		WHERE
			"gt_s_one_target"."id" = "t2_2"."id"
	),
	"col3" = (
		SELECT
			REPLACE("x_3"."col3", 'auth.', '')
		FROM
			"gt_s_one" "x_3"
				INNER JOIN "gt_s_one_target" "t2_3" ON "x_3"."id" = "t2_3"."id"
				LEFT JOIN "access_mode" "y1_3" ON Upper(REPLACE("x_3"."col3", 'auth.', '')) = Upper("y1_3"."code") OR Upper(REPLACE("x_3"."col3", 'auth.', '')) IS NULL AND Upper("y1_3"."code") IS NULL
		WHERE
			"gt_s_one_target"."id" = "t2_3"."id"
	),
	"col4" = (
		SELECT
			"x_4"."col4"
		FROM
			"gt_s_one" "x_4"
				INNER JOIN "gt_s_one_target" "t2_4" ON "x_4"."id" = "t2_4"."id"
				LEFT JOIN "access_mode" "y1_4" ON Upper(REPLACE("x_4"."col3", 'auth.', '')) = Upper("y1_4"."code") OR Upper(REPLACE("x_4"."col3", 'auth.', '')) IS NULL AND Upper("y1_4"."code") IS NULL
		WHERE
			"gt_s_one_target"."id" = "t2_4"."id"
	),
	"col5" = (
		SELECT
			CASE
				WHEN "x_5"."col3" = 'empty' THEN '1'
				ELSE '0'
			END
		FROM
			"gt_s_one" "x_5"
				INNER JOIN "gt_s_one_target" "t2_5" ON "x_5"."id" = "t2_5"."id"
				LEFT JOIN "access_mode" "y1_5" ON Upper(REPLACE("x_5"."col3", 'auth.', '')) = Upper("y1_5"."code") OR Upper(REPLACE("x_5"."col3", 'auth.', '')) IS NULL AND Upper("y1_5"."code") IS NULL
		WHERE
			"gt_s_one_target"."id" = "t2_5"."id"
	),
	"col6" = (
		SELECT
			CASE
				WHEN "x_6"."col3" = 'empty' THEN ''
				ELSE CAST("y1_6"."id" AS NVarChar(11))
			END
		FROM
			"gt_s_one" "x_6"
				INNER JOIN "gt_s_one_target" "t2_6" ON "x_6"."id" = "t2_6"."id"
				LEFT JOIN "access_mode" "y1_6" ON Upper(REPLACE("x_6"."col3", 'auth.', '')) = Upper("y1_6"."code") OR Upper(REPLACE("x_6"."col3", 'auth.', '')) IS NULL AND Upper("y1_6"."code") IS NULL
		WHERE
			"gt_s_one_target"."id" = "t2_6"."id"
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
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "access_mode"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "gt_s_one_target"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "gt_s_one"


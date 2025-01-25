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
				ELSE CAST("y1_1"."id" AS NVarChar(11))
			END
		FROM
			"gt_s_one" "x_1"
				LEFT JOIN "access_mode" "y1_1" ON (Upper(Replace("x_1"."col3", 'auth.', '')) = Upper("y1_1"."code") OR Upper(Replace("x_1"."col3", 'auth.', '')) IS NULL AND Upper("y1_1"."code") IS NULL)
		WHERE
			"gt_s_one"."id" = "x_1"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"gt_s_one" "x"
				LEFT JOIN "access_mode" "y1" ON (Upper(Replace("x"."col3", 'auth.', '')) = Upper("y1"."code") OR Upper(Replace("x"."col3", 'auth.', '')) IS NULL AND Upper("y1"."code") IS NULL)
		WHERE
			"gt_s_one"."id" = "x"."id"
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "access_mode"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "gt_s_one"


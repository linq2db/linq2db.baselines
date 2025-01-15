BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'gt_s_one')) THEN
		EXECUTE STATEMENT 'DROP TABLE "gt_s_one"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'gt_s_one')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "gt_s_one"
			(
				"id"   Int                                    NOT NULL,
				"col1" VarChar(100) CHARACTER SET UNICODE_FSS,
				"col2" VarChar(100) CHARACTER SET UNICODE_FSS,
				"col3" VarChar(100) CHARACTER SET UNICODE_FSS,
				"col4" VarChar(100) CHARACTER SET UNICODE_FSS,
				"col5" VarChar(100) CHARACTER SET UNICODE_FSS,
				"col6" VarChar(100) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_gt_s_one" PRIMARY KEY ("id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'gt_s_one_target')) THEN
		EXECUTE STATEMENT 'DROP TABLE "gt_s_one_target"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'gt_s_one_target')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "gt_s_one_target"
			(
				"id"   Int                                    NOT NULL,
				"col1" VarChar(100) CHARACTER SET UNICODE_FSS,
				"col2" VarChar(100) CHARACTER SET UNICODE_FSS,
				"col3" VarChar(100) CHARACTER SET UNICODE_FSS,
				"col4" VarChar(100) CHARACTER SET UNICODE_FSS,
				"col5" VarChar(100) CHARACTER SET UNICODE_FSS,
				"col6" VarChar(100) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_gt_s_one_target" PRIMARY KEY ("id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'access_mode')) THEN
		EXECUTE STATEMENT 'DROP TABLE "access_mode"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'access_mode')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "access_mode"
			(
				"id"   Int                                    NOT NULL,
				"code" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_access_mode" PRIMARY KEY ("id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

UPDATE
	"gt_s_one_target"
SET
	"col1" = (
		SELECT
			"x_1"."col1"
		FROM
			"gt_s_one" "x_1"
				LEFT JOIN "access_mode" "y1_1" ON Upper(REPLACE("x_1"."col3", 'auth.', '')) = Upper("y1_1"."code") OR "x_1"."col3" IS NULL AND "y1_1"."code" IS NULL
		WHERE
			"x_1"."id" = "gt_s_one_target"."id"
	),
	"col2" = (
		SELECT
			"x_2"."col2"
		FROM
			"gt_s_one" "x_2"
				LEFT JOIN "access_mode" "y1_2" ON Upper(REPLACE("x_2"."col3", 'auth.', '')) = Upper("y1_2"."code") OR "x_2"."col3" IS NULL AND "y1_2"."code" IS NULL
		WHERE
			"x_2"."id" = "gt_s_one_target"."id"
	),
	"col3" = (
		SELECT
			REPLACE("x_3"."col3", 'auth.', '')
		FROM
			"gt_s_one" "x_3"
				LEFT JOIN "access_mode" "y1_3" ON Upper(REPLACE("x_3"."col3", 'auth.', '')) = Upper("y1_3"."code") OR "x_3"."col3" IS NULL AND "y1_3"."code" IS NULL
		WHERE
			"x_3"."id" = "gt_s_one_target"."id"
	),
	"col4" = (
		SELECT
			"x_4"."col4"
		FROM
			"gt_s_one" "x_4"
				LEFT JOIN "access_mode" "y1_4" ON Upper(REPLACE("x_4"."col3", 'auth.', '')) = Upper("y1_4"."code") OR "x_4"."col3" IS NULL AND "y1_4"."code" IS NULL
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
				LEFT JOIN "access_mode" "y1_5" ON Upper(REPLACE("x_5"."col3", 'auth.', '')) = Upper("y1_5"."code") OR "x_5"."col3" IS NULL AND "y1_5"."code" IS NULL
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
				LEFT JOIN "access_mode" "y1_6" ON Upper(REPLACE("x_6"."col3", 'auth.', '')) = Upper("y1_6"."code") OR "x_6"."col3" IS NULL AND "y1_6"."code" IS NULL
		WHERE
			"x_6"."id" = "gt_s_one_target"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"gt_s_one" "x"
				LEFT JOIN "access_mode" "y1" ON Upper(REPLACE("x"."col3", 'auth.', '')) = Upper("y1"."code") OR "x"."col3" IS NULL AND "y1"."code" IS NULL
		WHERE
			"x"."id" = "gt_s_one_target"."id"
	)

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'access_mode')) THEN
		EXECUTE STATEMENT 'DROP TABLE "access_mode"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'gt_s_one_target')) THEN
		EXECUTE STATEMENT 'DROP TABLE "gt_s_one_target"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'gt_s_one')) THEN
		EXECUTE STATEMENT 'DROP TABLE "gt_s_one"';
END


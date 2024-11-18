BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'gt_s_one')) THEN
		EXECUTE STATEMENT 'DROP TABLE "gt_s_one"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'access_mode')) THEN
		EXECUTE STATEMENT 'DROP TABLE "access_mode"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

UPDATE
	"gt_s_one"
SET
	"col1" = "gt_s_one"."col1",
	"col2" = "gt_s_one"."col2",
	"col3" = REPLACE("gt_s_one"."col3", 'auth.', ''),
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
				LEFT JOIN "access_mode" "y1_1" ON Upper(REPLACE("x_1"."col3", 'auth.', '')) = Upper("y1_1"."code") OR Upper(REPLACE("x_1"."col3", 'auth.', '')) IS NULL AND Upper("y1_1"."code") IS NULL
		WHERE
			"gt_s_one"."id" = "x_1"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"gt_s_one" "x"
				LEFT JOIN "access_mode" "y1" ON Upper(REPLACE("x"."col3", 'auth.', '')) = Upper("y1"."code") OR Upper(REPLACE("x"."col3", 'auth.', '')) IS NULL AND Upper("y1"."code") IS NULL
		WHERE
			"gt_s_one"."id" = "x"."id"
	)

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'access_mode')) THEN
		EXECUTE STATEMENT 'DROP TABLE "access_mode"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'gt_s_one')) THEN
		EXECUTE STATEMENT 'DROP TABLE "gt_s_one"';
END


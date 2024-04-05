﻿BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4167Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4167Table"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4167Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4167Table"
			(
				ID          Int                                    NOT NULL,
				"Value"     VarChar(255) CHARACTER SET UNICODE_FSS,
				"EnumValue" Int,

				CONSTRAINT "PK_Issue4167Table" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "Issue4167Table"
(
	ID,
	"Value",
	"EnumValue"
)
SELECT 1,CAST('000001' AS VarChar(255) CHARACTER SET UNICODE_FSS),0 FROM rdb$database UNION ALL
SELECT 2,'000001',3 FROM rdb$database UNION ALL
SELECT 3,'000001',NULL FROM rdb$database UNION ALL
SELECT 4,'000002',0 FROM rdb$database

BeforeExecute
-- Firebird4 Firebird
DECLARE @p Integer -- Int32
SET     @p = 0

WITH CTE_1 ("EnumValue")
AS
(
	SELECT
		CASE
			WHEN "g_1"."EnumValue" IS NULL THEN @p
			ELSE "g_1"."EnumValue"
		END
	FROM
		"Issue4167Table" "g_1"
	WHERE
		"g_1"."Value" = '000001'
	GROUP BY
		"g_1"."Value",
		"g_1"."EnumValue"
)
SELECT
	"t1"."EnumValue"
FROM
	CTE_1 "t1"
ORDER BY
	"t1"."EnumValue"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4167Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4167Table"';
END


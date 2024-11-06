BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4596Form')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4596Form"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4596Form')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4596Form"
			(
				"Id" Int      NOT NULL,
				C1   NChar(1) NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4596Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4596Item"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4596Item')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4596Item"
			(
				"Id"         Int                                    NOT NULL,
				"FormId"     Int                                    NOT NULL,
				"OrderIndex" Int                                    NOT NULL,
				"Name1"      VarChar(255) CHARACTER SET UNICODE_FSS,
				"Name2"      VarChar(255) CHARACTER SET UNICODE_FSS,
				"Name3"      VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
	"m_1"."c1",
	"m_1"."c2",
	"d"."Id",
	"d"."FormId",
	"d"."OrderIndex",
	"d"."Name1",
	"d"."Name2",
	"d"."Name3"
FROM
	(
		SELECT FIRST 1
			"t1"."Id",
			CASE
				WHEN "t1".C1 = 'T' THEN '1'
				ELSE '0'
			END as "c1",
			CASE
				WHEN "t1".C1 <> 'T' THEN '1'
				ELSE '0'
			END as "c2"
		FROM
			"Issue4596Form" "t1"
	) "m_1",
	"Issue4596Item" "d"
WHERE
	"d"."FormId" = "m_1"."Id"
ORDER BY
	CASE
		WHEN "m_1"."c1" = '1' THEN "d"."OrderIndex"
		ELSE 0
	END,
	CASE
		WHEN "m_1"."c2" = '1' THEN "d"."Name1"
		ELSE ''
	END,
	CASE
		WHEN "m_1"."c2" = '1' THEN "d"."Name2"
		ELSE ''
	END,
	CASE
		WHEN "m_1"."c2" = '1' THEN "d"."Name3"
		ELSE ''
	END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"t1"."Id",
	"t1".C1,
	CASE
		WHEN "t1".C1 = 'T' THEN '1'
		ELSE '0'
	END,
	CASE
		WHEN "t1".C1 <> 'T' THEN '1'
		ELSE '0'
	END
FROM
	"Issue4596Form" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4596Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4596Item"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4596Form')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4596Form"';
END


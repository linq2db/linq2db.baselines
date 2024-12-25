BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4596Form')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4596Form"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4596Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4596Item"';
END

BeforeExecute
-- Firebird.5 Firebird4

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
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"m_1"."Id",
	"m_1"."cond",
	"m_1"."cond_1",
	"d"."Id",
	"d"."FormId",
	"d"."OrderIndex",
	"d"."Name1",
	"d"."Name2",
	"d"."Name3"
FROM
	(
		SELECT
			"t1"."Id",
			"t1".C1 = 'T' as "cond",
			"t1".C1 <> 'T' as "cond_1"
		FROM
			"Issue4596Form" "t1"
		FETCH NEXT 1 ROWS ONLY
	) "m_1",
	"Issue4596Item" "d"
WHERE
	"d"."FormId" = "m_1"."Id"
ORDER BY
	CASE
		WHEN "m_1"."cond" THEN "d"."OrderIndex"
		ELSE 0
	END,
	CASE
		WHEN "m_1"."cond_1" THEN "d"."Name1"
		ELSE ''
	END,
	CASE
		WHEN "m_1"."cond_1" THEN "d"."Name2"
		ELSE ''
	END,
	CASE
		WHEN "m_1"."cond_1" THEN "d"."Name3"
		ELSE ''
	END

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1".C1,
	"t1".C1 = 'T',
	"t1".C1 <> 'T'
FROM
	"Issue4596Form" "t1"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4596Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4596Item"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4596Form')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4596Form"';
END


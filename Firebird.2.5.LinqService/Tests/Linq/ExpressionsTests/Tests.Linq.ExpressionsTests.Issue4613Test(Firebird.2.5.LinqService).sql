BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4613Service')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4613Service"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4613Service')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4613Service"
			(
				"IdContract" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4613Contract')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4613Contract"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4613Contract')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4613Contract"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"contract"."Id",
	"servProj"."IdContract"
FROM
	"Issue4613Service" "servProj"
		INNER JOIN "Issue4613Contract" "contract" ON "servProj"."IdContract" = "contract"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4613Contract')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4613Contract"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4613Service')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4613Service"';
END


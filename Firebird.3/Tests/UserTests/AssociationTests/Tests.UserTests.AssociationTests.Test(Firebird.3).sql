BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DisTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DisTable"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DisTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DisTable"
			(
				"DisTypeID" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'JurTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "JurTable"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'JurTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "JurTable"
			(
				"JurCode" VarChar(2) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_JurTable" PRIMARY KEY ("JurCode")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DisTypeTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DisTypeTable"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DisTypeTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DisTypeTable"
			(
				"DisTypeID" Int                                   NOT NULL,
				"JurCode"   VarChar(50) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_DisTypeTable" PRIMARY KEY ("DisTypeID")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"d"."DisTypeID"
FROM
	"DisTable" "d"
		INNER JOIN "DisTypeTable" "a_DisType" ON CASE
			WHEN "d"."DisTypeID" = 1 THEN 1
			WHEN "d"."DisTypeID" = 2 THEN 2
			WHEN "d"."DisTypeID" = 4 THEN 4
			WHEN "d"."DisTypeID" = 5 THEN 5
		END = "a_DisType"."DisTypeID"
		INNER JOIN "JurTable" "j" ON "a_DisType"."JurCode" = "j"."JurCode"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DisTypeTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DisTypeTable"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'JurTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "JurTable"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DisTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DisTable"';
END


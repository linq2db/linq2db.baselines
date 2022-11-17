BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Person2562')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Person2562"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Person2562')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Person2562"
			(
				"CardTypeId" Int                                    NOT NULL,
				"CardNumber" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Lics"       VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ExternalId2562')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ExternalId2562"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ExternalId2562')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ExternalId2562"
			(
				"CardTypeId" Int                                    NOT NULL,
				"CardNumber" VarChar(255) CHARACTER SET UNICODE_FSS,
				"TypeId"     Int                                    NOT NULL,
				"Id"         VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."CardTypeId",
	"t1"."CardNumber",
	"t1"."Lics",
	(
		SELECT FIRST @take
			LIST("x"."Id")
		FROM
			"ExternalId2562" "x"
		WHERE
			"x"."CardTypeId" = "t1"."CardTypeId" AND ("x"."CardNumber" = "t1"."CardNumber" OR "x"."CardNumber" IS NULL AND "t1"."CardNumber" IS NULL) AND
			"x"."TypeId" = 2
	)
FROM
	"Person2562" "t1"

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"person"."CardNumber",
	"person"."CardTypeId",
	(
		SELECT FIRST @take
			LIST("x"."Id")
		FROM
			"ExternalId2562" "x"
		WHERE
			"x"."CardTypeId" = "person"."CardTypeId" AND ("x"."CardNumber" = "person"."CardNumber" OR "x"."CardNumber" IS NULL AND "person"."CardNumber" IS NULL) AND
			"x"."TypeId" = 2
	)
FROM
	"Person2562" "person"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ExternalId2562')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ExternalId2562"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Person2562')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Person2562"';
END


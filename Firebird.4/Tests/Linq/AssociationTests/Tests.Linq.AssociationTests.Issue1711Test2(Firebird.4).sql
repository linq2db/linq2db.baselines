BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Entity1711')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Entity1711"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Entity1711')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Entity1711"
			(
				"Id" BigInt NOT NULL,

				CONSTRAINT "PK_Entity1711" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Relationship1711')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Relationship1711"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Relationship1711')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Relationship1711"
			(
				"EntityId" BigInt  NOT NULL,
				"Deleted"  BOOLEAN NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t"."Id"
FROM
	"Entity1711" "t"
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			"Relationship1711" "r"
		WHERE
			"r"."Deleted" = FALSE AND "r"."EntityId" = "t"."Id"
	)

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Relationship1711')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Relationship1711"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Entity1711')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Entity1711"';
END


BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Adsl')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Adsl"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Adsl')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Adsl"
			(
				"Id"       Int NOT NULL,
				"IdClient" Int,

				CONSTRAINT "PK_Adsl" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Client')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Client"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Client')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Client"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_Client" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

SELECT
	"adsl_1"."Id"
FROM
	"Adsl" "adsl_1"
		INNER JOIN "Client" "client_1" ON "adsl_1"."IdClient" = "client_1"."Id"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Client')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Client"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Adsl')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Adsl"';
END


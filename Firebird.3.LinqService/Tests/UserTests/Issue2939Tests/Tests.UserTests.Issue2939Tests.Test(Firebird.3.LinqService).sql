BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Adsl')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Adsl"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Client')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Client"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

SELECT
	"serv"."Id"
FROM
	"Adsl" "serv"
		INNER JOIN "Client" "client_1" ON "serv"."IdClient" = "client_1"."Id"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Client')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Client"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Adsl')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Adsl"';
END


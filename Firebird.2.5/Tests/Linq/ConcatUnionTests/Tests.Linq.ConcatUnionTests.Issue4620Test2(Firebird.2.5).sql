BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4620Table"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4620Table"
			(
				"Id"         Int             NOT NULL,
				"IdContract" Int,
				"IdClient"   Int,
				"Sum"        Decimal(18, 10) NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue4620Table"
(
	"Id",
	"IdContract",
	"IdClient",
	"Sum"
)
SELECT 1,NULL,1,0 FROM rdb$database UNION ALL
SELECT 2,2,NULL,0 FROM rdb$database UNION ALL
SELECT 3,NULL,NULL,0 FROM rdb$database UNION ALL
SELECT 4,2,1,0 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Client')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4620Client"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Client')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4620Client"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue4620Client"
(
	"Id",
	"Name"
)
SELECT 1,CAST('Client 1' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'Client 2' FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Contract')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4620Contract"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Contract')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4620Contract"
			(
				"Id"       Int NOT NULL,
				"IdClient" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue4620Contract"
(
	"Id",
	"IdClient"
)
SELECT 1,1 FROM rdb$database UNION ALL
SELECT 2,2 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Name"
FROM
	(
		SELECT
			"b"."Id",
			"a_Client"."Name"
		FROM
			"Issue4620Table" "b"
				INNER JOIN "Issue4620Client" "a_Client" ON "b"."IdClient" = "a_Client"."Id"
		WHERE
			"b"."IdClient" IS NOT NULL
		UNION ALL
		SELECT
			"b_1"."Id",
			"a_Client_1"."Name"
		FROM
			"Issue4620Table" "b_1"
				INNER JOIN "Issue4620Contract" "a_Contract" ON "b_1"."IdContract" = "a_Contract"."Id"
				INNER JOIN "Issue4620Client" "a_Client_1" ON "a_Contract"."IdClient" = "a_Client_1"."Id"
		WHERE
			"b_1"."IdContract" IS NOT NULL
	) "t1"
ORDER BY
	"t1"."Id",
	"t1"."Name"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Contract')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4620Contract"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Client')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4620Client"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4620Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4620Table"';
END


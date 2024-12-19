BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestEntity1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestEntity1"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestEntity1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TestEntity1"
			(
				"Id"     Int                                    NOT NULL,
				"Field1" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestEntity2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestEntity2"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestEntity2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TestEntity2"
			(
				"Id"     Int                                    NOT NULL,
				"Field1" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Field1",
	"t2"."Id",
	"t2"."Field1"
FROM
	"TestEntity1" "t1"
		LEFT JOIN "TestEntity2" "t2" ON "t1"."Id" = "t2"."Id"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Field1",
	"t2"."Id",
	"t2"."Field1"
FROM
	"TestEntity2" "t2"
		LEFT JOIN "TestEntity1" "t1" ON "t2"."Id" = "t1"."Id"
WHERE
	"t1"."Id" IS NULL

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Field1",
	NULL,
	NULL,
	NULL,
	"t2"."Id",
	"t2"."Id",
	"t2"."Field1",
	NULL,
	NULL
FROM
	"TestEntity1" "t1"
		LEFT JOIN "TestEntity2" "t2" ON "t1"."Id" = "t2"."Id"
UNION ALL
SELECT
	NULL,
	NULL,
	"t1_1"."Id",
	"t1_1"."Id",
	"t1_1"."Field1",
	NULL,
	NULL,
	NULL,
	"t2_1"."Id",
	"t2_1"."Field1"
FROM
	"TestEntity2" "t2_1"
		LEFT JOIN "TestEntity1" "t1_1" ON "t2_1"."Id" = "t1_1"."Id"
WHERE
	"t1_1"."Id" IS NULL

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestEntity2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestEntity2"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestEntity1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestEntity1"';
END


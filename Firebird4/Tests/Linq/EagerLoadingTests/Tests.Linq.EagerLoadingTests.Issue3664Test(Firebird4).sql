BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3664')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3664"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3664')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Test3664"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_Test3664" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Test3664"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3664Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3664Item"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3664Item')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Test3664Item"
			(
				"Id"     Int NOT NULL,
				"TestId" Int NOT NULL,

				CONSTRAINT "PK_Test3664Item" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird4 Firebird

INSERT INTO "Test3664Item"
(
	"Id",
	"TestId"
)
SELECT 11,1 FROM rdb$database UNION ALL
SELECT 12,1 FROM rdb$database

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird4 Firebird
DECLARE @id Integer -- Int32
SET     @id = 11

SELECT
	"lw_Test3664"."Id",
	"a"."Id",
	"a"."TestId"
FROM
	"Test3664" "lw_Test3664"
		INNER JOIN "Test3664Item" "a" ON "lw_Test3664"."Id" = "a"."TestId" AND "a"."Id" = @id

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."Id"
FROM
	"Test3664" "t1"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird4 Firebird
DECLARE @id Integer -- Int32
SET     @id = 12

SELECT
	"lw_Test3664"."Id",
	"a"."Id",
	"a"."TestId"
FROM
	"Test3664" "lw_Test3664"
		INNER JOIN "Test3664Item" "a" ON "lw_Test3664"."Id" = "a"."TestId" AND "a"."Id" = @id

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird4 Firebird

SELECT
	"t1"."Id"
FROM
	"Test3664" "t1"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3664Item')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3664Item"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test3664')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test3664"';
END


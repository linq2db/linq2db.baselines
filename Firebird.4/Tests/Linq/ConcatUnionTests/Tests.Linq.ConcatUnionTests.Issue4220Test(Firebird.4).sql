BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcreteA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ConcreteA"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcreteA')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ConcreteA"
			(
				"Id"    Int                                    NOT NULL,
				"AOnly" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_ConcreteA" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcreteB')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ConcreteB"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcreteB')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "ConcreteB"
			(
				"Id"    Int                                    NOT NULL,
				"BOnly" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_ConcreteB" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @AOnly VarChar(6) -- String
SET     @AOnly = 'a only'

INSERT INTO "ConcreteA"
(
	"Id",
	"AOnly"
)
VALUES
(
	@Id,
	@AOnly
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @BOnly VarChar(6) -- String
SET     @BOnly = 'b only'

INSERT INTO "ConcreteB"
(
	"Id",
	"BOnly"
)
VALUES
(
	@Id,
	@BOnly
)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"e"."Id",
	"e"."AOnly",
	NULL,
	NULL
FROM
	"ConcreteA" "e"
UNION ALL
SELECT
	NULL,
	NULL,
	"e_1"."Id",
	"e_1"."BOnly"
FROM
	"ConcreteB" "e_1"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcreteB')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ConcreteB"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'ConcreteA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "ConcreteA"';
END


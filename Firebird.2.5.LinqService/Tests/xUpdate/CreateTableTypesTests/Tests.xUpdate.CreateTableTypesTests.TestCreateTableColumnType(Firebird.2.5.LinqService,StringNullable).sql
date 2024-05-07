BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateTableTypes')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CreateTableTypes"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateTableTypes')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "CreateTableTypes"
			(
				"String" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Id"     Int                                    NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @String VarChar -- String
SET     @String = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @String VarChar(23) -- String
SET     @String = 'test max value nullable'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."String"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateTableTypes')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CreateTableTypes"';
END


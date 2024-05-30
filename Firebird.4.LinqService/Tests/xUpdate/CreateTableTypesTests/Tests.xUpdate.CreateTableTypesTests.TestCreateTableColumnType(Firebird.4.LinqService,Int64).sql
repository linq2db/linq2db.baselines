BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateTableTypes')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CreateTableTypes"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateTableTypes')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "CreateTableTypes"
			(
				"Id"    Int    NOT NULL,
				"Int64" BigInt NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Int64 BigInt -- Int64
SET     @Int64 = 0

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Int64"
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Int64 BigInt -- Int64
SET     @Int64 = 3

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Int64"
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Int64"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateTableTypes')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CreateTableTypes"';
END


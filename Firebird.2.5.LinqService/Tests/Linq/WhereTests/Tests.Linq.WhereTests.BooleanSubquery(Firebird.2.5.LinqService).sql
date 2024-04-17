BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithBool')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WhereWithBool"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithBool')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WhereWithBool"
			(
				"Id"        Int     NOT NULL,
				"BoolValue" CHAR(1) NOT NULL,

				CONSTRAINT "PK_WhereWithBool" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @BoolValue Char(1) -- String
SET     @BoolValue = '1'

INSERT INTO "WhereWithBool"
(
	"Id",
	"BoolValue"
)
VALUES
(
	@Id,
	@BoolValue
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t"."Id",
	"t"."BoolValue"
FROM
	"WhereWithBool" "t"
WHERE
	(
		SELECT
			"x"."BoolValue"
		FROM
			"WhereWithBool" "x"
		WHERE
			"x"."Id" = 1
	) = '1'

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithBool')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WhereWithBool"';
END


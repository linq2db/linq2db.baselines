BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithBool')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WhereWithBool"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithBool')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "WhereWithBool"
			(
				"Id"        Int     NOT NULL,
				"BoolValue" BOOLEAN NOT NULL,

				CONSTRAINT "PK_WhereWithBool" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "WhereWithBool"
(
	"Id",
	"BoolValue"
)
SELECT 1,TRUE FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."Id",
	"t"."BoolValue"
FROM
	"WhereWithBool" "t",
	"WhereWithBool" "x"
WHERE
	"x"."BoolValue" = TRUE AND "x"."Id" = 1

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithBool')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WhereWithBool"';
END


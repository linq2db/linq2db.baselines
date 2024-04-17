BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithBool')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WhereWithBool"';
END

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

INSERT INTO "WhereWithBool"
(
	"Id",
	"BoolValue"
)
SELECT 1,TRUE FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

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
	) = TRUE

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'WhereWithBool')) THEN
		EXECUTE STATEMENT 'DROP TABLE "WhereWithBool"';
END


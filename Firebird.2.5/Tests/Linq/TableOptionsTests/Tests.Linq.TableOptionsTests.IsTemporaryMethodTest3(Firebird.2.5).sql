-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTable"';
END

-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTable')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "TestTable"
			(
				"Id"    Int NOT NULL,
				"Value" Int NOT NULL,

				CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
			)
			ON COMMIT PRESERVE ROWS
		';
END

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value",
	"t2"."Id",
	"t2"."Value",
	"t3"."Id",
	"t3"."Value"
FROM
	"TestTable" "t1"
		CROSS JOIN "TestTable" "t2"
		INNER JOIN "TestTable" "t3" ON "t2"."Id" = "t3"."Id"
WHERE
	"t1"."Id" = "t2"."Id"

-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTable"';
END


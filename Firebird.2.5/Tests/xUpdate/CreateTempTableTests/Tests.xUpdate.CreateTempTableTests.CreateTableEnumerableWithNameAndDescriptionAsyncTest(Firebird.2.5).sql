-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempTable"';
END

-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "TempTable"
			(
				"Name" VarChar(20) CHARACTER SET UNICODE_FSS NOT NULL
			)
			ON COMMIT PRESERVE ROWS
		';
END

-- Firebird.2.5 Firebird

INSERT INTO "TempTable"
(
	"Name"
)
SELECT CAST('John' AS VarChar(20) CHARACTER SET UNICODE_FSS) FROM rdb$database

-- Firebird.2.5 Firebird

SELECT
	"t"."Name"
FROM
	"Person" "p"
		INNER JOIN "TempTable" "t" ON "p"."FirstName" = "t"."Name"

-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempTable"';
END


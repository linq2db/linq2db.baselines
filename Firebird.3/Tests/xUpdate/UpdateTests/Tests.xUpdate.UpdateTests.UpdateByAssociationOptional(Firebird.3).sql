BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MainTable"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "MainTable"
			(
				"Id"    Int                                    NOT NULL,
				"Field" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "MainTable"
(
	"Id",
	"Field"
)
SELECT 1,CAST('value 1' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'value 2' FROM rdb$database UNION ALL
SELECT 3,'value 3' FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AssociatedTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AssociatedTable"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AssociatedTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "AssociatedTable"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "AssociatedTable"
(
	"Id"
)
SELECT 1 FROM rdb$database UNION ALL
SELECT 3 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @id Integer -- Int32
SET     @id = 3

UPDATE
	"MainTable"
SET
	"Field" = 'test'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"MainTable" "t1"
				LEFT JOIN "AssociatedTable" "a_AssociatedOptional" ON "t1"."Id" = "a_AssociatedOptional"."Id"
				LEFT JOIN "MainTable" "a_MainOptional" ON "a_AssociatedOptional"."Id" = "a_MainOptional"."Id"
		WHERE
			"t1"."Id" = @id AND "MainTable"."Id" = "a_MainOptional"."Id" AND
			("MainTable"."Field" = "a_MainOptional"."Field" AND "MainTable"."Field" IS NOT NULL AND "a_MainOptional"."Field" IS NOT NULL OR "MainTable"."Field" IS NULL AND "a_MainOptional"."Field" IS NULL)
	)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"MainTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AssociatedTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AssociatedTable"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MainTable"';
END


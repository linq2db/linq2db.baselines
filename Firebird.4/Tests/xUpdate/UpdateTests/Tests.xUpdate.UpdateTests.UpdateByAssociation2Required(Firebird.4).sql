BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MainTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

INSERT INTO "MainTable"
(
	"Id",
	"Field"
)
SELECT 1,CAST('value 1' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'value 2' FROM rdb$database UNION ALL
SELECT 3,'value 3' FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AssociatedTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AssociatedTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

INSERT INTO "AssociatedTable"
(
	"Id"
)
SELECT 1 FROM rdb$database UNION ALL
SELECT 3 FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4
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
			"AssociatedTable" "pat"
				INNER JOIN "MainTable" "a_MainRequired" ON "pat"."Id" = "a_MainRequired"."Id"
		WHERE
			"pat"."Id" = @id AND "MainTable"."Id" = "a_MainRequired"."Id" AND
			("MainTable"."Field" = "a_MainRequired"."Field" OR "MainTable"."Field" IS NULL AND "a_MainRequired"."Field" IS NULL)
	)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"MainTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'AssociatedTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "AssociatedTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MainTable"';
END


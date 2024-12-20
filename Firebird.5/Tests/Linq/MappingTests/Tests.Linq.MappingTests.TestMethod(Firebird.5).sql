BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Document')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Document"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Document')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Document"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"s"."Id"
FROM
	"Document" "s"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Document')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Document"';
END


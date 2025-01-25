BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SimpleBulkCopyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SimpleBulkCopyTable"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SimpleBulkCopyTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SimpleBulkCopyTable"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 1 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
SELECT 2 FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SimpleBulkCopyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SimpleBulkCopyTable"';
END


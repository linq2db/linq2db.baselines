-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithPrimaryKey2')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "TableWithPrimaryKey2"
			(
				"Key" Int NOT NULL,

				CONSTRAINT "PK_TableWithPrimaryKey2" PRIMARY KEY ("Key")
			)
			ON COMMIT PRESERVE ROWS
		';
END

-- Firebird.4 Firebird4

INSERT INTO "TableWithPrimaryKey2"
(
	"Key"
)
SELECT 1 FROM rdb$database

-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithPrimaryKey2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithPrimaryKey2"';
END


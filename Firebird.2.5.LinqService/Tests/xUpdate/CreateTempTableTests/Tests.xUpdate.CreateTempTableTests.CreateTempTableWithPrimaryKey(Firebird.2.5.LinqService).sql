BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithPrimaryKey')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "TableWithPrimaryKey"
			(
				"Key" Int NOT NULL,

				CONSTRAINT "PK_TableWithPrimaryKey" PRIMARY KEY ("Key")
			)
			ON COMMIT PRESERVE ROWS
		';
END

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TableWithPrimaryKey')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TableWithPrimaryKey"';
END


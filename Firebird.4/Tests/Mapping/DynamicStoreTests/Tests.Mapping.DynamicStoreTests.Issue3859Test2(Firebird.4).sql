BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DynamicColumnsTestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DynamicColumnsTestTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DynamicColumnsTestTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DynamicColumnsTestTable"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DynamicColumnsTestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DynamicColumnsTestTable"';
END


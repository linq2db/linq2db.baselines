BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SampleClass"
			(
				"Id"    Int NOT NULL,
				"Value" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	LOCALTIMESTAMP
FROM rdb$database
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END


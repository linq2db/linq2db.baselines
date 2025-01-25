BeforeExecute
-- Firebird.2.5 Firebird

CREATE GLOBAL TEMPORARY TABLE "IsGlobalTemporaryTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"IsGlobalTemporaryTable" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'IsGlobalTemporaryTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "IsGlobalTemporaryTable"';
END


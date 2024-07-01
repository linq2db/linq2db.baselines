BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3927Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3927Table"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3927Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3927Table"
			(
				"SerialNumber" Char(11) NOT NULL,
				"PageNumber"   Int      NOT NULL,

				CONSTRAINT "PK_Issue3927Table" PRIMARY KEY ("SerialNumber")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @PageNumber Integer -- Int32
SET     @PageNumber = 9
DECLARE @serialNumber Char(11) -- String
SET     @serialNumber = '12345678901'

INSERT INTO "Issue3927Table"
(
	"PageNumber"
)
SELECT
	CAST(@PageNumber AS Int)
FROM
	"Issue3927Table" "display"
WHERE
	"display"."SerialNumber" = @serialNumber

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3927Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3927Table"';
END


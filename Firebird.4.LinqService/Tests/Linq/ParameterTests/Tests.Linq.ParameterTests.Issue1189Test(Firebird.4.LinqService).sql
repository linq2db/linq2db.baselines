BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1189Customer')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1189Customer"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1189Customer')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1189Customer"
			(
				ID   Int                                    NOT NULL,
				NAME VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_Issue1189Customer" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @DateTime TimeStamp -- DateTime
SET     @DateTime = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"k_1".ID,
	"k_1".NAME,
	CAST(@DateTime AS TimeStamp)
FROM
	"Issue1189Customer" "k_1"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1189Customer')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1189Customer"';
END


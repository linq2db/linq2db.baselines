-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue681Table2"';
END

-- Firebird.3 Firebird3

CREATE TABLE "Issue681Table2"
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_Issue681Table2" PRIMARY KEY (ID)
)

-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue681Table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue681Table2"';
END


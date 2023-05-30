BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1303')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1303"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1303')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1303"
			(
				ID       Int  NOT NULL,
				"Array"  BLOB,
				"Binary" BLOB,

				CONSTRAINT "PK_Issue1303" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @Array Binary(3)
SET     @Array = X'010203'
DECLARE @Binary Binary(2)
SET     @Binary = X'0405'

INSERT INTO "Issue1303"
(
	ID,
	"Array",
	"Binary"
)
VALUES
(
	1,
	@Array,
	@Binary
)

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 2
	"t1".ID,
	"t1"."Array",
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1".ID = 1

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 2
	"t1".ID,
	"t1"."Array",
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1"."Array" = X'010203'

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 2
	"t1".ID,
	"t1"."Array",
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1"."Binary" = X'0405'

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1303')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1303"';
END


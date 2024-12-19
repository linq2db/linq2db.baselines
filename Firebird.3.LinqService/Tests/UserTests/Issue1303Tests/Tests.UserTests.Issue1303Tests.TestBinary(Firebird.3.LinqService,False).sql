BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1303')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1303"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1303')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1303"
			(
				ID       Int                              NOT NULL,
				"Array"  VARCHAR(10) CHARACTER SET OCTETS,
				"Binary" VARCHAR(10) CHARACTER SET OCTETS,

				CONSTRAINT "PK_Issue1303" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Issue1303"
(
	ID,
	"Array",
	"Binary"
)
VALUES
(
	1,
	X'010203',
	X'0405'
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1".ID,
	"t1"."Array",
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1".ID = 1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1".ID,
	"t1"."Array",
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1"."Array" = X'010203'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1".ID,
	"t1"."Array",
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1"."Binary" = X'0405'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1303')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1303"';
END


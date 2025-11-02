-- Firebird.5 Firebird4

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

-- Firebird.5 Firebird4

SELECT
	"t1".ID,
	"t1"."Array",
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1".ID = 1
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4

SELECT
	"t1".ID,
	"t1"."Array",
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1"."Array" = X'010203'
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4

SELECT
	"t1".ID,
	"t1"."Array",
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1"."Binary" = X'0405'
FETCH NEXT 2 ROWS ONLY


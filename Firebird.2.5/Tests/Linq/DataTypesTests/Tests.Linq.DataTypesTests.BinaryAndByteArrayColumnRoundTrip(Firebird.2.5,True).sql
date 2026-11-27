-- Firebird.2.5 Firebird
INSERT INTO "BinaryColumnRecord"
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

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1".ID,
	"t1"."Array",
	"t1"."Binary"
FROM
	"BinaryColumnRecord" "t1"
WHERE
	"t1".ID = 1

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1".ID,
	"t1"."Array",
	"t1"."Binary"
FROM
	"BinaryColumnRecord" "t1"
WHERE
	"t1"."Array" = X'010203'

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1".ID,
	"t1"."Array",
	"t1"."Binary"
FROM
	"BinaryColumnRecord" "t1"
WHERE
	"t1"."Binary" = X'0405'


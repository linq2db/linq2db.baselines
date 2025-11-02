-- Firebird.3 Firebird3

UPDATE
	"TrimTestTable" "t1"
SET
	"Data" = '***III***'
WHERE
	"t1".ID = 3

-- Firebird.3 Firebird3

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = '***OOO***'
WHERE
	"t"."Data" = '***XXX***'

-- Firebird.3 Firebird3

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = '***SSS***'
WHERE
	"t"."Data" = '***HHH***'

-- Firebird.3 Firebird3

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

-- Firebird.3 Firebird3

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID


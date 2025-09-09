BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

UPDATE
	"TrimTestTable" "t1"
SET
	"Data" = '***III***'
WHERE
	"t1".ID = 3

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = '***OOO***'
WHERE
	"t"."Data" = '***XXX***'

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = '***SSS***'
WHERE
	"t"."Data" = '***HHH***'

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID


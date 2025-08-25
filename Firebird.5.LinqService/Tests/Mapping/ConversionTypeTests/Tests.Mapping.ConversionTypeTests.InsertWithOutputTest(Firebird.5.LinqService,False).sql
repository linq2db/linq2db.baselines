BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
SELECT
	"t1".ID + 1,
	'***HHH***'
FROM
	"TrimTestTable" "t1"
RETURNING
	"TrimTestTable".ID,
	"TrimTestTable"."Data"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID


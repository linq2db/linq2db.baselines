BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID


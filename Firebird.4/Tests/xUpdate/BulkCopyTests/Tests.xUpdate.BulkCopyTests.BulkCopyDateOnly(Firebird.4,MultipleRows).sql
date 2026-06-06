-- Firebird.4 Firebird4

INSERT INTO "DateOnlyTable"
(
	"Date"
)
SELECT DATE '2021-01-01' FROM rdb$database

-- Firebird.4 Firebird4

SELECT
	"t1"."Date"
FROM
	"DateOnlyTable" "t1"
FETCH NEXT 2 ROWS ONLY


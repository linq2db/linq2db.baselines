-- Firebird.2.5 Firebird

INSERT INTO "DateOnlyTable"
(
	"Date"
)
SELECT DATE '2021-01-01' FROM rdb$database

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Date"
FROM
	"DateOnlyTable" "t1"


-- Firebird.2.5 Firebird

INSERT INTO "DateOnlyTable"
(
	"Date"
)
SELECT CAST('2021-01-01' AS date) FROM rdb$database

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Date"
FROM
	"DateOnlyTable" "t1"


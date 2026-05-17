-- Firebird.3 Firebird3

INSERT INTO "DateOnlyTable"
(
	"Date"
)
SELECT DATE '2021-01-01' FROM rdb$database

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Date"
FROM
	"DateOnlyTable" "t1"
FETCH NEXT 2 ROWS ONLY


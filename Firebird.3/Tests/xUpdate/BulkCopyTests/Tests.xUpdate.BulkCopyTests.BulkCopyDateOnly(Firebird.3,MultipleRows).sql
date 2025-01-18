BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "DateOnlyTable"
(
	"Date"
)
SELECT CAST('2021-01-01' AS date) FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Date"
FROM
	"DateOnlyTable" "t1"
FETCH NEXT 2 ROWS ONLY


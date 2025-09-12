BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "DateOnlyTable"
(
	"Date"
)
SELECT CAST('2021-01-01' AS date) FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Date"
FROM
	"DateOnlyTable" "t1"
FETCH NEXT 2 ROWS ONLY


BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Table2"
(
	ID
)
SELECT
	"t".ID
FROM
	"Table1" "t"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1".ID,
	"t1"."Date"
FROM
	"Table2" "t1"


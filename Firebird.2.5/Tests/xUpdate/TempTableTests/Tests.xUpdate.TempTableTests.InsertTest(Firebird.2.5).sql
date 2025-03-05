BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Table2"
(
	ID
)
SELECT
	"t".ID
FROM
	"Table1" "t"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1".ID,
	"t1"."Date"
FROM
	"Table2" "t1"


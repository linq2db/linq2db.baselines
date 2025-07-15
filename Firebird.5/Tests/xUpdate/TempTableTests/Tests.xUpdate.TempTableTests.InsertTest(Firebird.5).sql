BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "Table2"
(
	ID
)
SELECT
	"t".ID
FROM
	"Table1" "t"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1".ID,
	"t1"."Date"
FROM
	"Table2" "t1"


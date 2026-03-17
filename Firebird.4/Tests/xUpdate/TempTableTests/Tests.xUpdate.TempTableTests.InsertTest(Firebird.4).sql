-- Firebird.4 Firebird4

INSERT INTO "Table2"
(
	ID
)
SELECT
	"t".ID
FROM
	"Table1" "t"

-- Firebird.4 Firebird4

SELECT
	"t1".ID,
	"t1"."Date"
FROM
	"Table2" "t1"


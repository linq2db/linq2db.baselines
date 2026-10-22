-- SapHana.Odbc SapHanaOdbc
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "t1"

-- SapHana.Odbc SapHanaOdbc
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "p"
WHERE
	To_Timestamp('2010-01-01 10:00:' || LPad(MOD("p"."ID", 1), 2, '0') || '.000') < TIMESTAMP '2010-01-01 10:00:00.5000000'

-- SapHana.Odbc SapHanaOdbc
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "p"
WHERE
	To_Timestamp('2010-01-01 10:00:' || LPad(MOD("p"."ID", 1), 2, '0') || '.000') >= TIMESTAMP '2010-01-01 10:00:00.5000000'

-- SapHana.Odbc SapHanaOdbc
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "p"
WHERE
	To_Timestamp('2010-01-01 10:00:' || LPad(MOD("p"."ID", 1), 2, '0') || '.000') = TIMESTAMP '2010-01-01 10:00:00.5000000'


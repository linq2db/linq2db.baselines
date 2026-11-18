-- Firebird.3 Firebird3
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "t1"

-- Firebird.3 Firebird3
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "p"
WHERE
	CAST('2010-01-01 10:00:' || LPad(CAST(Mod("p".ID, 1) AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '.000' AS TimeStamp) < TIMESTAMP '2010-01-01 10:00:00.5000'

-- Firebird.3 Firebird3
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "p"
WHERE
	CAST('2010-01-01 10:00:' || LPad(CAST(Mod("p".ID, 1) AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '.000' AS TimeStamp) >= TIMESTAMP '2010-01-01 10:00:00.5000'

-- Firebird.3 Firebird3
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" "p"
WHERE
	CAST('2010-01-01 10:00:' || LPad(CAST(Mod("p".ID, 1) AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '.000' AS TimeStamp) = TIMESTAMP '2010-01-01 10:00:00.5000'


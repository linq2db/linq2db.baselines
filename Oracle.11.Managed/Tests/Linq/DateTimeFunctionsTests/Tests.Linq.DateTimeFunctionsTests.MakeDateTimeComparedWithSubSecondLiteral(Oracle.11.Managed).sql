-- Oracle.11.Managed Oracle11
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" t1

-- Oracle.11.Managed Oracle11
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" p
WHERE
	TO_TIMESTAMP('2010-01-01 10:00:' || LPad(CAST(MOD(p.ID, 1) AS VarChar(2)), 2, '0') || '.000', 'YYYY-MM-DD HH24:MI:SS.FF3') < TIMESTAMP '2010-01-01 10:00:00.500000'

-- Oracle.11.Managed Oracle11
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" p
WHERE
	TO_TIMESTAMP('2010-01-01 10:00:' || LPad(CAST(MOD(p.ID, 1) AS VarChar(2)), 2, '0') || '.000', 'YYYY-MM-DD HH24:MI:SS.FF3') >= TIMESTAMP '2010-01-01 10:00:00.500000'

-- Oracle.11.Managed Oracle11
SELECT
	COUNT(*)
FROM
	"LinqDataTypes" p
WHERE
	TO_TIMESTAMP('2010-01-01 10:00:' || LPad(CAST(MOD(p.ID, 1) AS VarChar(2)), 2, '0') || '.000', 'YYYY-MM-DD HH24:MI:SS.FF3') = TIMESTAMP '2010-01-01 10:00:00.500000'


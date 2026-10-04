-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	LinqDataTypes t1

-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	LinqDataTypes p
WHERE
	To_Date('2010-01-01 10:00:' || LPad(Mod(p.ID, 1), 2, '0'), '%Y-%m-%d %H:%M:%S') < TO_DATE('2010-01-01 10:00:00.50000', '%Y-%m-%d %H:%M:%S.%F5')

-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	LinqDataTypes p
WHERE
	To_Date('2010-01-01 10:00:' || LPad(Mod(p.ID, 1), 2, '0'), '%Y-%m-%d %H:%M:%S') >= TO_DATE('2010-01-01 10:00:00.50000', '%Y-%m-%d %H:%M:%S.%F5')

-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	LinqDataTypes p
WHERE
	To_Date('2010-01-01 10:00:' || LPad(Mod(p.ID, 1), 2, '0'), '%Y-%m-%d %H:%M:%S') = TO_DATE('2010-01-01 10:00:00.50000', '%Y-%m-%d %H:%M:%S.%F5')


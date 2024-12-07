BeforeExecute
-- Informix.DB2 Informix

SELECT
	To_Date('2010-' || LPad(t.ID, 2, '0') || '-01 20:35:44', '%Y-%m-%d %H:%M:%S')
FROM
	LinqDataTypes t
WHERE
	Year(To_Date('2010-' || LPad(t.ID, 2, '0') || '-01 20:35:44', '%Y-%m-%d %H:%M:%S')) = 2010


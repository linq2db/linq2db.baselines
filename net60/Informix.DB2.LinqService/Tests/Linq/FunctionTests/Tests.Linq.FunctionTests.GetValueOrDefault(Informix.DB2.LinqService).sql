BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.Value1
FROM
	Parent p
WHERE
	Nvl(p.Value1, 0) > 0


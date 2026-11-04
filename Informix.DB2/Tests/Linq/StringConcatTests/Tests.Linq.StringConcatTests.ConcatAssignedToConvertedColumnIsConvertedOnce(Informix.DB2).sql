-- Informix.DB2 Informix
UPDATE
	ConvertedTargetRow t1
SET
	Conv = Nvl('x:', '') || t1.Sku || Nvl('-s', '')

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1.Conv
FROM
	ConvertedTargetRow t1


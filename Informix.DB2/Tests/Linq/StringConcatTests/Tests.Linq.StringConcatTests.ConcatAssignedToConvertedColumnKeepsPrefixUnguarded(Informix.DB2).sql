-- Informix.DB2 Informix
UPDATE
	ConvertedTargetRow t1
SET
	Conv = 'x:' || t1.Sku || '-s'


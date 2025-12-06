-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Value",
	'M' || To_Char(t1.Id)
FROM
	InstanceClass t1


-- Informix.DB2 Informix
SELECT FIRST 2
	(v."Integer" / 33)::Int,
	v."Decimal" / 33,
	v."Double" / 33
FROM
	Issue4469Table v


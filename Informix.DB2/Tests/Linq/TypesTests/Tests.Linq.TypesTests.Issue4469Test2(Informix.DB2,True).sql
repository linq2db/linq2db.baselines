-- Informix.DB2 Informix

SELECT FIRST 2
	v."Integer"::Decimal / 33,
	v."Decimal" / 33,
	v."Double" / 33
FROM
	Issue4469Table v


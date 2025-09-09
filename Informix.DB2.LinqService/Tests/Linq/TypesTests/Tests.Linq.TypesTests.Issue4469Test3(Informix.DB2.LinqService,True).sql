BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 2
	v."Integer"::Float / 33,
	v."Decimal"::Float / 33,
	v."Double" / 33
FROM
	Issue4469Table v


BeforeExecute
-- Informix.DB2 Informix
DECLARE @param Double(8)
SET     @param = 33

SELECT FIRST 2
	v."Integer"::Float / @param::Float,
	v."Decimal"::Float / @param::Float,
	v."Double" / @param::Float
FROM
	Issue4469Table v


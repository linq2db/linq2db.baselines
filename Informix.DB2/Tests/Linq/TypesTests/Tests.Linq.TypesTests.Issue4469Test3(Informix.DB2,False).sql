-- Informix.DB2 Informix
DECLARE @param Double(8)
SET     @param = 33
DECLARE @param_1 Double(8)
SET     @param_1 = 33
DECLARE @param_2 Double(8)
SET     @param_2 = 33

SELECT FIRST 2
	v."Integer"::Float / @param::Float,
	v."Decimal"::Float / @param_1::Float,
	v."Double" / @param_2::Float
FROM
	Issue4469Table v


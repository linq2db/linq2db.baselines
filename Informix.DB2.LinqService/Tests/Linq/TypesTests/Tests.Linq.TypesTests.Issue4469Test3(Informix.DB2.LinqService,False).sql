BeforeExecute
-- Informix.DB2 Informix
DECLARE @param Integer(8) -- Int32
SET     @param = 33
DECLARE @param_1 Decimal(8)
SET     @param_1 = 33
DECLARE @param_2 Double(8)
SET     @param_2 = 33

SELECT FIRST 2
	v."Integer"::Float / @param::Int,
	v."Decimal"::Float / @param_1::Decimal(10, 5),
	v."Double" / @param_2::Float
FROM
	Issue4469Table v


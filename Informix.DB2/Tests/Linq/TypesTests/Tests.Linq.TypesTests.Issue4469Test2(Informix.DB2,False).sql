BeforeExecute
-- Informix.DB2 Informix
DECLARE @param Integer(16) -- Int32
SET     @param = 33
DECLARE @param_1 Decimal(16)
SET     @param_1 = 33
DECLARE @param_2 Decimal(16)
SET     @param_2 = 33

SELECT FIRST 2
	v."Integer"::Decimal / @param::Int,
	v."Decimal" / @param_1::Decimal(10, 5),
	v."Double" / @param_2::Decimal(2, 0)
FROM
	Issue4469Table v


-- Informix.DB2 Informix
DECLARE @param Integer(4) -- Int32
SET     @param = 33
DECLARE @param_1 Integer(4) -- Int32
SET     @param_1 = 33
DECLARE @param_2 Integer(4) -- Int32
SET     @param_2 = 33

SELECT FIRST 2
	v."Integer" / @param::Int,
	v."Decimal" / @param_1::Int,
	v."Double" / @param_2::Int
FROM
	Issue4469Table v


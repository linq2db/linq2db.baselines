-- Informix.DB2 Informix
DECLARE @param Integer(4) -- Int32
SET     @param = 33

SELECT FIRST 2
	v."Integer" / @param::Int,
	v."Decimal" / @param::Int,
	v."Double" / @param::Int
FROM
	Issue4469Table v


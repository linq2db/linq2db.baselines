BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @param Decimal(16)
SET     @param = 33
DECLARE @param_1 Decimal(16)
SET     @param_1 = 33

SELECT FIRST 2
	v."Integer"::Decimal / @param::Decimal(2, 0),
	v."Decimal" / @param_1::Decimal(10, 5),
	v."Double" / @param::Decimal(2, 0)
FROM
	Issue4469Table v


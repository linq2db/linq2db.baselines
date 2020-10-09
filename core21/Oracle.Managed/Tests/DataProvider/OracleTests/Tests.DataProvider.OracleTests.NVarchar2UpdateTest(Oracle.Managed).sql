BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO ALLTYPES
(
	INTDATATYPE
)
VALUES
(
	123
)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @value_1 NVarchar2(8) -- String
SET     @value_1 = '致我们最爱的母亲'

UPDATE
	ALLTYPES
SET
	ALLTYPES.NVARCHARDATATYPE = :value_1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Decimal(2,0)
SET     @id = 11
DECLARE @take Int32
SET     @take = 2

SELECT 
	p.NVARCHARDATATYPE
FROM
	ALLTYPES p
WHERE
	p.ID = :id
FETCH NEXT :take ROWS ONLY


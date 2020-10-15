BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @value_1 NVarchar2(8) -- String
SET     @value_1 = '致我们最爱的母亲'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO ALLTYPES
(
	NVARCHARDATATYPE
)
VALUES
(
	:value_1
)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Decimal(2, 0)
SET     @id = 43
DECLARE @take Int32
SET     @take = 2

SELECT
	p.NVARCHARDATATYPE
FROM
	ALLTYPES p
WHERE
	p.ID = :id AND ROWNUM <= :take


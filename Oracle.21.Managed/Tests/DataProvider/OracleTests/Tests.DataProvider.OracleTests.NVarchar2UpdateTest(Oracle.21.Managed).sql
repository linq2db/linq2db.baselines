BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	123
)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @value NVarchar2(8) -- String
SET     @value = '致我们最爱的母亲'

UPDATE
	"AllTypes" t1
SET
	"nvarcharDataType" = :value

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id Decimal(1, 0)
SET     @id = 3

SELECT
	p."nvarcharDataType"
FROM
	"AllTypes" p
WHERE
	p.ID = :id
FETCH NEXT 2 ROWS ONLY

BeforeExecute
DisposeTransaction

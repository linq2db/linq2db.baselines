BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

DROP SEQUENCE "AllTypesSeq"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "AllTypesSeq" MINVALUE 1 START WITH 3

BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
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
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @value NVarchar2(8) -- String
SET     @value = '致我们最爱的母亲'

UPDATE
	"AllTypes" t1
SET
	"nvarcharDataType" = :value

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
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

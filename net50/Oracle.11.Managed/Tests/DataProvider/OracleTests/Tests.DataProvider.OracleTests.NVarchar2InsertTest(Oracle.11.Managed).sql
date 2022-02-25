BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP SEQUENCE "AllTypesSeq"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE SEQUENCE "AllTypesSeq" MINVALUE 1 START WITH 3

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @value_1 NVarchar2(8) -- String
SET     @value_1 = '致我们最爱的母亲'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "AllTypes"
(
	"nvarcharDataType"
)
VALUES
(
	:value_1
)
RETURNING 
	ID INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Decimal(1, 0)
SET     @id = 3
DECLARE @take Int32
SET     @take = 2

SELECT
	p."nvarcharDataType"
FROM
	"AllTypes" p
WHERE
	p.ID = :id AND ROWNUM <= :take


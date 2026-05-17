-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
DECLARE @value NVarchar2(8) -- String
SET     @value = '致我们最爱的母亲'

UPDATE
	"AllTypes" t1
SET
	"nvarcharDataType" = :value

-- Oracle.11.Managed Oracle11
DECLARE @id Decimal(1, 0)
SET     @id = 3

SELECT
	p."nvarcharDataType"
FROM
	"AllTypes" p
WHERE
	p.ID = :id AND ROWNUM <= 2


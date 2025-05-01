BeforeExecute
-- Informix.DB2 Informix
DECLARE @guid VarChar(36) -- String
SET     @guid = 'febe3eca-cb5f-40b2-ad39-2979d312afca'

SELECT
	t.GuidValue
FROM
	LinqDataTypes t
WHERE
	Lower(To_Char(t.GuidValue)) = @guid


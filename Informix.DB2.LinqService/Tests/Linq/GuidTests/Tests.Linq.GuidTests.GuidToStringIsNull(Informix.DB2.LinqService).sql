BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Guid1 Char(36) -- StringFixedLength
SET     @Guid1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT FIRST 2
	x.Id,
	x.NullableGuid
FROM
	TableWithGuid x
WHERE
	x.NullableGuid IS NULL AND x.Id = @Guid1


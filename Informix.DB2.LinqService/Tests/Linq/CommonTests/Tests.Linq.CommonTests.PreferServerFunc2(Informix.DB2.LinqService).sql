BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Length Integer(4) -- Int32
SET     @Length = 0

SELECT
	CHAR_LENGTH(p.FirstName || '.') - 1 + @Length::Int
FROM
	Person p


-- Informix.DB2 Informix
DECLARE @CharFld Char(1) -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO CharFieldRecord
(
	CharFld
)
VALUES
(
	@CharFld
)

-- Informix.DB2 Informix
SELECT FIRST 1
	t1.Id,
	t1.CharFld
FROM
	CharFieldRecord t1


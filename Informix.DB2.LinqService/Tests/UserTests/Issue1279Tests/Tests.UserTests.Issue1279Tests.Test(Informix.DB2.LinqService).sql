BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @CharFld Char(1) -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO Issue1279Table
(
	CharFld
)
VALUES
(
	@CharFld
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	t1.Id,
	t1.CharFld
FROM
	Issue1279Table t1


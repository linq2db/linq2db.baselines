BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue1279Table
(
	Id      SERIAL    NOT NULL,
	CharFld NChar(1)  NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
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
-- Informix.DB2 Informix

SELECT FIRST 1
	t1.Id,
	t1.CharFld
FROM
	Issue1279Table t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Issue1279Table


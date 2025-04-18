﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 1

INSERT INTO TableWithIdentity
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @newValue Integer(4) -- Int32
SET     @newValue = 123

UPDATE
	TableWithIdentity t1
SET
	"Value" = @newValue

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	TableWithIdentity t1


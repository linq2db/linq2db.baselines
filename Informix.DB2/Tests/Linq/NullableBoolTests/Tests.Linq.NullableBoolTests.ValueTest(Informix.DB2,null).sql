BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NullableBoolClass

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS NullableBoolClass
(
	"Value" BOOLEAN     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value SmallInt -- Boolean
SET     @Value = NULL

INSERT INTO NullableBoolClass
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value Char(1) -- StringFixedLength
SET     @Value = 't'

INSERT INTO NullableBoolClass
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value Char(1) -- StringFixedLength
SET     @Value = 'f'

INSERT INTO NullableBoolClass
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" IS NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t."Value"
FROM
	NullableBoolClass t
WHERE
	1 = 0

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t."Value"
FROM
	NullableBoolClass t

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NullableBoolClass


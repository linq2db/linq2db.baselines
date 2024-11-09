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
DECLARE @value Char(1) -- StringFixedLength
SET     @value = 't'

SELECT
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" = @value

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value Char(1) -- StringFixedLength
SET     @value = 't'

SELECT
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" = @value

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value Char(1) -- StringFixedLength
SET     @value = 't'

SELECT
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" <> @value OR t."Value" IS NULL

BeforeExecute
-- Informix.DB2 Informix
DECLARE @value Char(1) -- StringFixedLength
SET     @value = 't'

SELECT
	t."Value"
FROM
	NullableBoolClass t
WHERE
	t."Value" <> @value

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NullableBoolClass


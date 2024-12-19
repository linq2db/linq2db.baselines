BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NotNullableBoolClass

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS NotNullableBoolClass
(
	"Value" BOOLEAN NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value Char(1) -- StringFixedLength
SET     @Value = 't'

INSERT INTO NotNullableBoolClass
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

INSERT INTO NotNullableBoolClass
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
	NotNullableBoolClass t
WHERE
	t."Value"

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t."Value"
FROM
	NotNullableBoolClass t
WHERE
	t."Value" = 't'::BOOLEAN

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t."Value"
FROM
	NotNullableBoolClass t
WHERE
	t."Value" = 'f'::BOOLEAN

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t."Value"
FROM
	NotNullableBoolClass t
WHERE
	NOT t."Value"

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t."Value"
FROM
	NotNullableBoolClass t
WHERE
	t."Value" = 'f'::BOOLEAN

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t."Value"
FROM
	NotNullableBoolClass t
WHERE
	t."Value" = 't'::BOOLEAN

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NotNullableBoolClass


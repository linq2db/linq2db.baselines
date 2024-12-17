BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TableWithIdentity

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TableWithIdentity
(
	Id      SERIAL  NOT NULL,
	"Value" Int     NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
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

UPDATE
	TableWithIdentity t1
SET
	"Value" = 123

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	TableWithIdentity t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TableWithIdentity


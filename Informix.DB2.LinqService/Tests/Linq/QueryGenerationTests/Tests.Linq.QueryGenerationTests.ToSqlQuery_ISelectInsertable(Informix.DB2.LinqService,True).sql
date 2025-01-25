BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 1

INSERT INTO TableWithIdentitySrc
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO TableWithIdentity
(
	"Value"
)
SELECT
	t1."Value" + 123
FROM
	TableWithIdentitySrc t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Value"
FROM
	TableWithIdentity t1


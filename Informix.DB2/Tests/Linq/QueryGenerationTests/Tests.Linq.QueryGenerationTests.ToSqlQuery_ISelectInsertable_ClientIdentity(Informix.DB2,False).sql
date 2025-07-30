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
DECLARE @addition Integer(4) -- Int32
SET     @addition = 123

INSERT INTO TableWithIdentity
(
	Id,
	"Value"
)
SELECT
	345,
	t1."Value" + @addition::Int
FROM
	TableWithIdentitySrc t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Value"
FROM
	TableWithIdentity t1


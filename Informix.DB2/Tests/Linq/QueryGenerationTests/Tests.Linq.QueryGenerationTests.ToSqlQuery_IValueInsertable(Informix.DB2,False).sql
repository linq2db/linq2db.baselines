-- Informix.DB2 Informix
DECLARE @value Integer(4) -- Int32
SET     @value = 123

INSERT INTO TableWithIdentity
(
	"Value"
)
VALUES
(
	@value
)

-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	TableWithIdentity t1


BeforeExecute
-- Informix.DB2 Informix

INSERT INTO TableWithIdentity
(
	Id,
	"Value"
)
VALUES
(
	543,
	123
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	TableWithIdentity t1


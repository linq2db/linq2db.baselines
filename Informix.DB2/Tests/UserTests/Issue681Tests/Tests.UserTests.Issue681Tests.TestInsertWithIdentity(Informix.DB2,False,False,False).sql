BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10

INSERT INTO Issue681Table4
(
	"Value"
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1


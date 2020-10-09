BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue464
(
	Id      Int NOT NULL,
	"Value" Int     NULL
)

BeforeExecute
INSERT BULK Issue464

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t1.Id, 
	t1."Value"
FROM
	Issue464 t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Issue464


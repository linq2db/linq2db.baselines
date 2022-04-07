BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SelectExpressionTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS SelectExpressionTable
(
	ID Int NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

INSERT INTO SelectExpressionTable
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	'b3d9b51c-89f9-442a-893b-cd8a6f667d37',
	'61efdcd4-659d-41e8-910c-506a9c2f31c5'
FROM
	SelectExpressionTable t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SelectExpressionTable


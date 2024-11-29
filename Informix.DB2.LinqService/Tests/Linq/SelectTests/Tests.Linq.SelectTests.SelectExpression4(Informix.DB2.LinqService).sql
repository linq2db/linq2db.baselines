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

DROP TABLE IF EXISTS SelectExpressionTable


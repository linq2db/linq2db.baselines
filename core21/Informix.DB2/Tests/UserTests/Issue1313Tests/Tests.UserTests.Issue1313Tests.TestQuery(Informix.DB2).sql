BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE ValueItem
(
	"Value" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO ValueItem
(
	"Value"
)
VALUES
(
	123
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	row_1."Value"
FROM
	ValueItem row_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE ValueItem


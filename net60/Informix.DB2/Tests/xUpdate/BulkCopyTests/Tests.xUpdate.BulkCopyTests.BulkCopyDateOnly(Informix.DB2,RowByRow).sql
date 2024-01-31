BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DateOnlyTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS DateOnlyTable
(
	"Date" DATETIME YEAR TO DAY NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Date Date(16)
SET     @Date = TO_DATE('2021-01-01', '%Y-%m-%d')

INSERT INTO DateOnlyTable
(
	"Date"
)
VALUES
(
	@Date
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1."Date"
FROM
	DateOnlyTable t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DateOnlyTable


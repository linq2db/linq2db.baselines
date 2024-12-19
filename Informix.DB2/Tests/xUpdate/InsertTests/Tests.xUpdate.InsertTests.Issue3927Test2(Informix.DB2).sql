BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3927Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue3927Table
(
	SerialNumber Char(11) NOT NULL,
	PageNumber   Int      NOT NULL,

	PRIMARY KEY (SerialNumber)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @pageNumber Integer(4) -- Int32
SET     @pageNumber = 9
DECLARE @serialNumber Char(11) -- StringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO Issue3927Table
(
	PageNumber
)
SELECT
	@pageNumber::Int
FROM
	Issue3927Table display
WHERE
	display.SerialNumber = @serialNumber

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3927Table


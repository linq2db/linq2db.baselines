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


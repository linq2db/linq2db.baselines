-- Informix.DB2 Informix
DECLARE @Test1 Char -- StringFixedLength
SET     @Test1 = NULL

UPDATE
	TableWithConverterValue x
SET
	Test1 = @Test1::Char(1)
WHERE
	x.Id = 1

-- Informix.DB2 Informix

SELECT FIRST 2
	x.Id,
	x.NoConversion,
	x.Test1,
	x.Test2
FROM
	TableWithConverterValue x
WHERE
	x.Id = 1

-- Informix.DB2 Informix
DECLARE @Test1 Char(1) -- StringFixedLength
SET     @Test1 = 'X'

UPDATE
	TableWithConverterValue x
SET
	Test1 = @Test1::Char(1)
WHERE
	x.Id = 2

-- Informix.DB2 Informix

SELECT FIRST 2
	x.Id,
	x.NoConversion,
	x.Test1,
	x.Test2
FROM
	TableWithConverterValue x
WHERE
	x.Id = 2

-- Informix.DB2 Informix
DECLARE @Test1 Char(1) -- StringFixedLength
SET     @Test1 = 'X'

SELECT
	x.Id,
	x.NoConversion,
	x.Test1,
	x.Test2
FROM
	TableWithConverterValue x
WHERE
	x.Test1 = @Test1::Char(1)


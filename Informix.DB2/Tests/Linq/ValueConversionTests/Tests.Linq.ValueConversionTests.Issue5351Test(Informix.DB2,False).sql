-- Informix.DB2 Informix
DECLARE @Test Char -- StringFixedLength
SET     @Test = NULL

UPDATE
	Issue5351Table x
SET
	Test = @Test::Char(1)
WHERE
	x.Id = 1

-- Informix.DB2 Informix

SELECT FIRST 2
	x.Id,
	x.Test
FROM
	Issue5351Table x
WHERE
	x.Id = 1

-- Informix.DB2 Informix
DECLARE @Test Char(1) -- StringFixedLength
SET     @Test = 'X'

UPDATE
	Issue5351Table x
SET
	Test = @Test::Char(1)
WHERE
	x.Id = 2

-- Informix.DB2 Informix

SELECT FIRST 2
	x.Id,
	x.Test
FROM
	Issue5351Table x
WHERE
	x.Id = 2

-- Informix.DB2 Informix
DECLARE @Test Char(1) -- StringFixedLength
SET     @Test = 'X'

SELECT
	x.Id,
	x.Test
FROM
	Issue5351Table x
WHERE
	x.Test = @Test::Char(1)


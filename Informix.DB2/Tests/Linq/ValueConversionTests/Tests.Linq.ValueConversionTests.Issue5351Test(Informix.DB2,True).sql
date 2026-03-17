-- Informix.DB2 Informix

UPDATE
	Issue5351Table x
SET
	Test = NULL
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

UPDATE
	Issue5351Table x
SET
	Test = 'X'
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

SELECT
	x.Id,
	x.Test
FROM
	Issue5351Table x
WHERE
	x.Test = 'X'


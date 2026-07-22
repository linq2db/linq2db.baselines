-- Informix.DB2 Informix
DECLARE @value Char(1) -- StringFixedLength
SET     @value = 'f'

INSERT INTO TestBool
(
	Id,
	"Value"
)
VALUES
(
	1,
	CASE
		WHEN NOT @value::BOOLEAN THEN 't'::BOOLEAN
		WHEN @value::BOOLEAN THEN 'f'::BOOLEAN
		ELSE NULL
	END
)

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	TestBool t1

-- Informix.DB2 Informix
UPDATE
	TestBool t1
SET
	"Value" = CASE
		WHEN NOT t1."Value" THEN 't'::BOOLEAN
		WHEN t1."Value" THEN 'f'::BOOLEAN
		ELSE NULL
	END

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	TestBool t1

-- Informix.DB2 Informix
DECLARE @value Char(1) -- StringFixedLength
SET     @value = 'f'

UPDATE
	TestBool r
SET
	"Value" = CASE
		WHEN NOT @value::BOOLEAN THEN 't'::BOOLEAN
		WHEN @value::BOOLEAN THEN 'f'::BOOLEAN
		ELSE NULL
	END
WHERE
	r.Id = 1

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	TestBool t1


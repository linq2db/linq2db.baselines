BeforeExecute
-- Informix.DB2 Informix (asynchronously)

INSERT INTO TestBool
(
	Id,
	"Value"
)
VALUES
(
	1,
	't'::BOOLEAN
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	TestBool t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

UPDATE
	TestBool t1
SET
	"Value" = CASE
		WHEN NOT t1."Value" THEN 't'::BOOLEAN
		WHEN t1."Value" THEN 'f'::BOOLEAN
		ELSE NULL
	END

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	TestBool t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

UPDATE
	TestBool t1
SET
	Id = 1,
	"Value" = 't'::BOOLEAN

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	TestBool t1


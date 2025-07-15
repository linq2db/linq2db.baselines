BeforeExecute
-- Informix.DB2 Informix

INSERT INTO TestBool
(
	Id,
	"Value"
)
VALUES
(
	1,
	NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	TestBool t1

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	TestBool t1
SET
	Id = 1,
	"Value" = CASE
		WHEN NOT t1."Value" THEN 't'::BOOLEAN
		WHEN t1."Value" THEN 'f'::BOOLEAN
		ELSE NULL
	END

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	TestBool t1

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	TestBool t1
SET
	Id = 1,
	"Value" = NULL

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	TestBool t1


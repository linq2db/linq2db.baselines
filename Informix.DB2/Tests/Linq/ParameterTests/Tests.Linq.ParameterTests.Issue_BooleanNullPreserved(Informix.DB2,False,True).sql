BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestBool

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TestBool
(
	Id      Int     NOT NULL,
	"Value" BOOLEAN     NULL
)

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
	'f'::BOOLEAN
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
	"Value" = 'f'::BOOLEAN

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1."Value"
FROM
	TestBool t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestBool


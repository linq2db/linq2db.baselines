BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ConcurrencyFiltered

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS ConcurrencyFiltered
(
	Id      Int           NOT NULL,
	Stamp   Int           NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ConcurrencyFiltered


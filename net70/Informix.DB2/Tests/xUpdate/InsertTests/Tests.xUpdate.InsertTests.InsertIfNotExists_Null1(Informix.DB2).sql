BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS test_insert_or_replace

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS test_insert_or_replace
(
	id         Int           NOT NULL,
	name       NVarChar(255)     NULL,
	created_by NVarChar(255)     NULL,
	updated_by NVarChar(255)     NULL,

	PRIMARY KEY (id)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	1
FROM
	test_insert_or_replace t1
WHERE
	t1.id = 1

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO test_insert_or_replace
(
	id,
	name
)
VALUES
(
	1,
	'test'
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	1
FROM
	test_insert_or_replace t1
WHERE
	t1.id = 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS test_insert_or_replace


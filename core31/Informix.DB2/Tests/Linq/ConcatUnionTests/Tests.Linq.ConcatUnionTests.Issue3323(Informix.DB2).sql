BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3323Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue3323Table
(
	Id       Int           NOT NULL,
	FistName NVarChar(255)     NULL,
	LastName NVarChar(255)     NULL,
	Text     NVarChar(255) NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Issue3323Table
(
	Id,
	FistName,
	LastName,
	Text
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Text,
	t1.FistName || ' ' || t1.LastName
FROM
	Issue3323Table t1
UNION ALL
SELECT
	t2.Id,
	t2.Text,
	t2.FistName || ' ' || t2.LastName
FROM
	Issue3323Table t2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3323Table


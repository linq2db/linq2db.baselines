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
	r.Id,
	r.FistName || ' ' || r.LastName
FROM
	Issue3323Table r
UNION ALL
SELECT
	r_1.Id + 1,
	r_1.Text
FROM
	Issue3323Table r_1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.Id + 1,
	NVL(r.Text, NULL)
FROM
	Issue3323Table r
UNION ALL
SELECT
	r_1.Id,
	r_1.FistName || ' ' || r_1.LastName
FROM
	Issue3323Table r_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3323Table


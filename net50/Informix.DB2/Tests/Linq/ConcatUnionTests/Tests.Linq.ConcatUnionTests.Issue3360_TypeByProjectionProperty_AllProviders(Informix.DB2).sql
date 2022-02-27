BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue3360Table
(
	Id  Int     NOT NULL,
	Str VarChar     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.Id,
	'str1'
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id,
	'str2'
FROM
	Issue3360Table p_1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.Id,
	'str2'
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id,
	'str1'
FROM
	Issue3360Table p_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3360Table


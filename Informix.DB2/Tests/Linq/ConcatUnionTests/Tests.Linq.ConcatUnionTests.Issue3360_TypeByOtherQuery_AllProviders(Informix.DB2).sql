BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3360Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue3360Table
(
	Id  Int     NOT NULL,
	Str VarChar     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.Id,
	p.Str
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id,
	'str'::VarChar
FROM
	Issue3360Table p_1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.Id,
	'str'::VarChar
FROM
	Issue3360Table p
UNION ALL
SELECT
	p_1.Id,
	p_1.Str
FROM
	Issue3360Table p_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3360Table


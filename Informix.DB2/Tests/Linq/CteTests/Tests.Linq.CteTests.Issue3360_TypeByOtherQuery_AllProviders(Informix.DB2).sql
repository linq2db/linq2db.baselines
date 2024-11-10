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

WITH cte (Id, Str)
AS
(
	SELECT
		p.Id,
		p.Str
	FROM
		Issue3360Table p
	UNION ALL
	SELECT
		t1.Id,
		'Str'::VarChar
	FROM
		cte t1,
		Issue3360Table r
	WHERE
		t1.Id = r.Id + 1
)
SELECT
	t2.Id,
	t2.Str
FROM
	cte t2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3360Table


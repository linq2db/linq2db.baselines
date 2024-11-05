BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3360WithEnum

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue3360WithEnum
(
	Id  Int         NOT NULL,
	Str VarChar(50) NOT NULL
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
		Issue3360WithEnum p
	UNION ALL
	SELECT
		t1.Id,
		'THIS_IS_TWO'
	FROM
		cte t1
			INNER JOIN Issue3360WithEnum r ON t1.Id = r.Id + 1
)
SELECT
	t2.Id,
	t2.Str
FROM
	cte t2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3360WithEnum


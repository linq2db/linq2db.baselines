BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3360NullInAnchor

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue3360NullInAnchor
(
	Id    Int         NOT NULL,
	Guid  VARCHAR(36)     NULL,
	Enum1 VarChar(50)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

WITH cte (Id, Enum1)
AS
(
	SELECT
		p.Id,
		NULL::VarChar(50)
	FROM
		Issue3360NullInAnchor p
	UNION ALL
	SELECT
		t1.Id,
		'THIS_IS_ONE'
	FROM
		cte t1
			INNER JOIN Issue3360NullInAnchor r ON t1.Id = r.Id + 100
)
SELECT
	t2.Id,
	t2.Enum1
FROM
	cte t2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3360NullInAnchor


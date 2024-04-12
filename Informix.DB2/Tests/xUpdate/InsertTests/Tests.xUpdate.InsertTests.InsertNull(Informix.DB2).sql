BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	1001,
	NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Parent p
WHERE
	p.ParentID = 1001


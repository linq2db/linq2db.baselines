BeforeExecute
-- Informix.DB2 Informix

MERGE INTO PKOnlyTable Target
USING (
	SELECT 1::Int AS ID FROM table(set{1})
	UNION ALL
	SELECT 2::Int FROM table(set{1})
	UNION ALL
	SELECT 3::Int FROM table(set{1})) Source
(
	ID
)
ON (Target.ID = Source.ID)

WHEN NOT MATCHED THEN
INSERT
(
	ID
)
VALUES
(
	Source.ID
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID
FROM
	PKOnlyTable t1
ORDER BY
	t1.ID


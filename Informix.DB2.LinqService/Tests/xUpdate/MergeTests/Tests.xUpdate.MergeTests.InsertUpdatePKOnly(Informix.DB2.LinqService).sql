BeforeExecute
--  Informix.DB2 Informix

MERGE INTO PKOnlyTable Target
USING (
	SELECT 1::Int AS source_ID FROM table(set{1})
	UNION ALL
	SELECT 2::Int FROM table(set{1})
	UNION ALL
	SELECT 3::Int FROM table(set{1})) Source
(
	source_ID
)
ON (Target.ID = Source.source_ID)

WHEN NOT MATCHED THEN
INSERT
(
	ID
)
VALUES
(
	Source.source_ID
)

BeforeExecute
--  Informix.DB2 Informix

SELECT
	t1.ID
FROM
	PKOnlyTable t1
ORDER BY
	t1.ID


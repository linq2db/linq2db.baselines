-- Informix.DB2 Informix

MERGE INTO UnusedSourceTable Target
USING (
	SELECT 1 AS Unused
	FROM table(set{1})	WHERE 1 = 0
)
 Source
(
Unused
)
ON (Target."Value" = 5)

WHEN NOT MATCHED THEN
INSERT
(
	Id,
	"Value"
)
VALUES
(
	2,
	5
)

-- Informix.DB2 Informix

SELECT FIRST 2
	r.Id,
	r."Value"
FROM
	UnusedSourceTable r
WHERE
	r.Id <> 1


BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	InstanceClass t
WHERE
	To_Char(t.Id) || To_Char(t."Value") = To_Char(t.Id) || t."Value"


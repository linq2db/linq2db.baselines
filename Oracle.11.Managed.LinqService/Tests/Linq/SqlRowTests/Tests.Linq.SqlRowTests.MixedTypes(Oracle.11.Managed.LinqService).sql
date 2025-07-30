BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	"Mixed" t
WHERE
	t."Int" > 0 AND (t."Str", t."Double", t."Bool") = (('One', 1D, 1)) AND
	EXISTS(
		SELECT
			*
		FROM
			"Mixed" u
		WHERE
			2 > u."Int" OR 2 = u."Int" AND u."Date" > t."Date"
	)


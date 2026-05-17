-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	a_Person."personid",
	a_Person."personname",
	MAX(VBIt."added")
FROM
	"activity649" VBIt
		INNER JOIN "person649" a_Person ON VBIt."personid" = a_Person."personid"
WHERE
	VBIt."added" >= TO_TIMESTAMP('2017-01-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3')
GROUP BY
	a_Person."personid",
	a_Person."personname"


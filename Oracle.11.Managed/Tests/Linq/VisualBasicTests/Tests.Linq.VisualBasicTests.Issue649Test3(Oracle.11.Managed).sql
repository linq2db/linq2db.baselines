BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	a_Person."personid",
	a_Person."personname",
	MAX(f."added")
FROM
	"activity649" f
		INNER JOIN "person649" a_Person ON f."personid" = a_Person."personid"
WHERE
	f."added" >= TO_TIMESTAMP('2017-01-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3')
GROUP BY
	a_Person."personid",
	a_Person."personname"


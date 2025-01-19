BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	(
		SELECT
			a_SubDatas."Reason"
		FROM
			"SubData2" a_SubDatas
		WHERE
			a_SubData."Id" = a_SubDatas."Id"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Data" i
		LEFT JOIN "SubData1" a_SubData ON i."Id" = a_SubData."Id"
ORDER BY
	i."Id"


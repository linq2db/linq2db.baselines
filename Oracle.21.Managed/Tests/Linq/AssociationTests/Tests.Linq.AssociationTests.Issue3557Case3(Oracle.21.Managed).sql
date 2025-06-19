BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	t1."Reason"
FROM
	"Data" i
		LEFT JOIN "SubData1" a_SubData ON i."Id" = a_SubData."Id"
		OUTER APPLY (
			SELECT
				a_SubDatas."Reason"
			FROM
				"SubData2" a_SubDatas
			WHERE
				a_SubData."Id" IS NOT NULL AND a_SubData."Id" = a_SubDatas."Id"
			FETCH NEXT 1 ROWS ONLY
		) t1
ORDER BY
	i."Id"


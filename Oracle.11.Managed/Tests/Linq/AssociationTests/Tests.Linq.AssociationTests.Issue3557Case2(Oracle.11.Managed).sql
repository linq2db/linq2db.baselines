BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	i."Id",
	Coalesce(t1."Reason", '')
FROM
	"Data" i
		LEFT JOIN "SubData1" a_SubData ON i."Id" = a_SubData."Id"
		LEFT JOIN (
			SELECT
				a_SubDatas."Reason",
				ROW_NUMBER() OVER (PARTITION BY a_SubDatas."Id" ORDER BY a_SubDatas."Id") as "rn",
				a_SubDatas."Id"
			FROM
				"SubData2" a_SubDatas
		) t1 ON a_SubData."Id" = t1."Id" AND t1."rn" <= 1
ORDER BY
	i."Id"


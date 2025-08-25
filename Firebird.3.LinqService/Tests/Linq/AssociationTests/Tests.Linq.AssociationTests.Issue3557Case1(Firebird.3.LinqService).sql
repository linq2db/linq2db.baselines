BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"i"."Id",
	CASE
		WHEN "a_SubData"."Id" IS NULL THEN NULL
		ELSE (
			SELECT
				"a_SubDatas"."Reason"
			FROM
				"SubData2" "a_SubDatas"
			WHERE
				"a_SubData"."Id" = "a_SubDatas"."Id"
			FETCH NEXT 1 ROWS ONLY
		)
	END
FROM
	"Data" "i"
		LEFT JOIN "SubData1" "a_SubData" ON "i"."Id" = "a_SubData"."Id"
ORDER BY
	"i"."Id"


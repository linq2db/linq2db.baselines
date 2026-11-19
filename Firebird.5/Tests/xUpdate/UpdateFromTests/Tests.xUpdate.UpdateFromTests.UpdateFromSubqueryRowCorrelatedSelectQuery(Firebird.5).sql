-- Firebird.5 Firebird4
UPDATE
	"UpdateRowDiagnostic"
SET
	"Status" = (
		SELECT
			CASE
				WHEN "t2"."Field1" IS DISTINCT FROM "UpdateRowDiagnostic"."Field1" OR "t2"."Field2" IS DISTINCT FROM "UpdateRowDiagnostic"."Field2"
					THEN 5
				ELSE 3
			END
		FROM
			"UpdateRowCheck" "t2"
	),
	"ErrorMessage" = (
		SELECT
			CASE
				WHEN "t3"."Field1" IS DISTINCT FROM "UpdateRowDiagnostic"."Field1" OR "t3"."Field2" IS DISTINCT FROM "UpdateRowDiagnostic"."Field2"
					THEN 'bad'
				ELSE NULL
			END
		FROM
			"UpdateRowCheck" "t3"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdateRowDiagnostic" "d"
				LEFT JOIN "UpdateRowCheck" "t1" ON 1=1
		WHERE
			"d"."Status" = 0 AND "UpdateRowDiagnostic"."Id" = "d"."Id"
	)

-- Firebird.5 Firebird4
SELECT
	"d"."Id",
	"d"."Status",
	"d"."ErrorMessage"
FROM
	"UpdateRowDiagnostic" "d"
ORDER BY
	"d"."Id"


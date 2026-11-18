-- SapHana.Native SapHana
SELECT
	"e"."Id",
	CASE
		WHEN 0 IN (
			SELECT
				"t1"."item"
			FROM
				(
					SELECT "j"."Value1" AS "item" FROM DUMMY
					UNION ALL
					SELECT 5 FROM DUMMY) "t1"
		)
			THEN 1
		ELSE 0
	END
FROM
	"MissedJoinEntity" "e"
		LEFT JOIN "MissedJoinEntity" "j" ON "j"."Id" = "e"."Id" + 1000


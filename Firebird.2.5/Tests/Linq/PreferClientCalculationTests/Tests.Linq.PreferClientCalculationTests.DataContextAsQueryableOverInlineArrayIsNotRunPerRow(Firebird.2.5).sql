-- Firebird.2.5 Firebird
SELECT
	"e"."Id",
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				(
					SELECT "j"."Value1" AS "item" FROM rdb$database
					UNION ALL
					SELECT 5 FROM rdb$database) "t1"
			WHERE
				0 = "t1"."item"
		)
			THEN '1'
		ELSE '0'
	END
FROM
	"MissedJoinEntity" "e"
		LEFT JOIN "MissedJoinEntity" "j" ON "j"."Id" = "e"."Id" + 1000


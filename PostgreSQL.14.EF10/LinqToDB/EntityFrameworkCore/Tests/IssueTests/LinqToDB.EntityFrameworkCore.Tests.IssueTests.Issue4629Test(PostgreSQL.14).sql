-- PostgreSQL.13 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	COUNT(*) OVER(),
	id."Id"
FROM
	(
		SELECT
			p."Id"
		FROM
			"Issue4629Posts" p
		WHERE
			(
				SELECT
					SUM("a_Tags"."Weight") as "Sum_1"
				FROM
					"Issue4629Tags" "a_Tags"
				WHERE
					p."Id" = "a_Tags"."PostId" AND "a_Tags"."Weight" > 1
			) > 5
		ORDER BY
			(
				SELECT
					SUM("a_Tags_1"."Weight") as "Sum_1"
				FROM
					"Issue4629Tags" "a_Tags_1"
				WHERE
					p."Id" = "a_Tags_1"."PostId"
			)
		LIMIT :take
	) id




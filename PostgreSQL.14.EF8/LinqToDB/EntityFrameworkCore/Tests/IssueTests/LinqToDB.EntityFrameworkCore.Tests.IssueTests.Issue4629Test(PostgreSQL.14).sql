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
			Coalesce((
				SELECT
					SUM("a_Tags"."Weight")
				FROM
					"Issue4629Tags" "a_Tags"
				WHERE
					p."Id" = "a_Tags"."PostId" AND "a_Tags"."Weight" > 1
			), 0) > 5
		ORDER BY
			Coalesce((
				SELECT
					SUM("a_Tags_1"."Weight")
				FROM
					"Issue4629Tags" "a_Tags_1"
				WHERE
					p."Id" = "a_Tags_1"."PostId"
			), 0)
		LIMIT :take
	) id




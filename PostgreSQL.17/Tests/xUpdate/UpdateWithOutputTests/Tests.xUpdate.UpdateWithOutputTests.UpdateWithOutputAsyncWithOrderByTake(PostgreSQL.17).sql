-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 1

UPDATE
	"OutputOrderedMessage"
SET
	"Consumed" = CURRENT_TIMESTAMP
FROM
	(
		SELECT
			x."Id"
		FROM
			"OutputOrderedMessage" x
		WHERE
			x."Consumed" IS NULL
		ORDER BY
			x."Id"
		LIMIT :take
	) t1
WHERE
	"OutputOrderedMessage"."Id" = t1."Id"
RETURNING
	"OutputOrderedMessage"."Id",
	"OutputOrderedMessage"."Key",
	"OutputOrderedMessage"."Payload"


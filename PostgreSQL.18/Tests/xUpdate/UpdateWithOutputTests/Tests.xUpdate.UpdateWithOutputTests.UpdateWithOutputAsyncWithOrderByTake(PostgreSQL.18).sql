-- PostgreSQL.18 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 1

UPDATE
	"OutputOrderedMessage"
SET
	"Consumed" = CURRENT_TIMESTAMP
FROM
	(
		SELECT
			x."Id",
			x."Key" as "Key_1",
			x."Payload"
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
	NEW."Id",
	NEW."Key",
	NEW."Payload"


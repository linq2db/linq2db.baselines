BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 1

UPDATE
	"MessageDto4414"
SET
	"Consumed" = CURRENT_TIMESTAMP
FROM
	(
		SELECT
			x."Id",
			x."Key" as "Key_1",
			x."Payload"
		FROM
			"MessageDto4414" x
		WHERE
			x."Consumed" IS NULL
		ORDER BY
			x."Id"
		LIMIT :take
	) t1
WHERE
	"MessageDto4414"."Id" = t1."Id"
RETURNING
	NEW."Id",
	NEW."Key",
	NEW."Payload"


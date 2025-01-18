BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 1

UPDATE
	"MessageDto4414"
SET
	"Consumed" = CURRENT_TIMESTAMP
FROM
	(
		SELECT
			x."Id"
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
	"MessageDto4414"."Id",
	"MessageDto4414"."Key",
	"MessageDto4414"."Payload"


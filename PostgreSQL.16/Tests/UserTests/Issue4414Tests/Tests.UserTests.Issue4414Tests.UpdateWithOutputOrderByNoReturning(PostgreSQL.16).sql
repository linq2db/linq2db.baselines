BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "MessageDto4414"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "MessageDto4414"
(
	"Id"       Int       NOT NULL,
	"Key"      Int       NOT NULL,
	"Consumed" TimeStamp     NULL,
	"Payload"  text          NULL,

	CONSTRAINT "PK_MessageDto4414" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)
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

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "MessageDto4414"


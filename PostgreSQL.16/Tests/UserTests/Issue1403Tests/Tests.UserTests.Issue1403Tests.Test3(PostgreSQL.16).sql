BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1403Tests_3"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1403Tests_3"
(
	event_id          Int  NOT NULL,
	event_description text NOT NULL,

	CONSTRAINT "PK_Issue1403Tests_3" PRIMARY KEY (event_id)
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue1403Tests_3"
(
	event_id,
	event_description
)
VALUES
(
	1,
	'New event'
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1.event_id,
	t1.event_description
FROM
	"Issue1403Tests_3" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1403Tests_3"


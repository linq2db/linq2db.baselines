BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Issue1403Tests_1"
(
	event_id          Int  NOT NULL,
	event_description text NOT NULL,

	CONSTRAINT "PK_Issue1403Tests_1" PRIMARY KEY (event_id)
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Issue1403Tests_1"
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1.event_description,
	t1.event_id
FROM
	"Issue1403Tests_1" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE "Issue1403Tests_1"


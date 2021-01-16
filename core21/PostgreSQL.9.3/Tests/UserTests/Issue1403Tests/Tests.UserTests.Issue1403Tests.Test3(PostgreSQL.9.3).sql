BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "Issue1403Tests_3"
(
	event_description text NOT NULL,
	event_id          Int  NOT NULL,

	CONSTRAINT "PK_Issue1403Tests_3" PRIMARY KEY (event_id)
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

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
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "Issue1403Tests_3"


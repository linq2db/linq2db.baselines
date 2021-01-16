BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "Issue1403Tests_1"
(
	event_id          Int  NOT NULL,
	event_description text NOT NULL,

	CONSTRAINT "PK_Issue1403Tests_1" PRIMARY KEY (event_id)
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

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
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE "Issue1403Tests_1"


BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1078Table"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1078Table"
(
	"UserID" Int     NOT NULL,
	"SiteID" Int     NOT NULL,
	"Active" Boolean NOT NULL,

	CONSTRAINT "PK_Issue1078Table" PRIMARY KEY ("UserID")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(1,1,True),
(2,1,False),
(3,1,True),
(4,2,False),
(5,2,True),
(6,2,False),
(7,2,False),
(8,3,False),
(9,4,True)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."SiteID",
	Count(*),
	(
		SELECT
			Count(*)
		FROM
			"Issue1078Table" u
		WHERE
			CASE
				WHEN u."Active" = True THEN 1
				ELSE 0
			END = 0 AND
			t1."SiteID" = u."SiteID"
	)
FROM
	"Issue1078Table" t1
GROUP BY
	t1."SiteID"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1078Table"


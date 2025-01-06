BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1078Table"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1078Table"
(
	"UserID" Int     NOT NULL,
	"SiteID" Int     NOT NULL,
	"Active" Boolean NOT NULL,

	CONSTRAINT "PK_Issue1078Table" PRIMARY KEY ("UserID")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL

SELECT
	grp."SiteID",
	COUNT(*),
	COUNT(CASE
		WHEN NOT grp."Active" THEN 1
		ELSE NULL
	END)
FROM
	"Issue1078Table" grp
GROUP BY
	grp."SiteID"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1078Table"


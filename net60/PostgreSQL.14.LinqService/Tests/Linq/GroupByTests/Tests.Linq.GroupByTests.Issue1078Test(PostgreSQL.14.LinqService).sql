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
DECLARE @UserID Integer -- Int32
SET     @UserID = 1
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 1
DECLARE @Active Boolean
SET     @Active = True

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	:UserID,
	:SiteID,
	:Active
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @UserID Integer -- Int32
SET     @UserID = 2
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 1
DECLARE @Active Boolean
SET     @Active = False

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	:UserID,
	:SiteID,
	:Active
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @UserID Integer -- Int32
SET     @UserID = 3
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 1
DECLARE @Active Boolean
SET     @Active = True

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	:UserID,
	:SiteID,
	:Active
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @UserID Integer -- Int32
SET     @UserID = 4
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 2
DECLARE @Active Boolean
SET     @Active = False

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	:UserID,
	:SiteID,
	:Active
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @UserID Integer -- Int32
SET     @UserID = 5
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 2
DECLARE @Active Boolean
SET     @Active = True

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	:UserID,
	:SiteID,
	:Active
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @UserID Integer -- Int32
SET     @UserID = 6
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 2
DECLARE @Active Boolean
SET     @Active = False

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	:UserID,
	:SiteID,
	:Active
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @UserID Integer -- Int32
SET     @UserID = 7
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 2
DECLARE @Active Boolean
SET     @Active = False

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	:UserID,
	:SiteID,
	:Active
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @UserID Integer -- Int32
SET     @UserID = 8
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 3
DECLARE @Active Boolean
SET     @Active = False

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	:UserID,
	:SiteID,
	:Active
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @UserID Integer -- Int32
SET     @UserID = 9
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 4
DECLARE @Active Boolean
SET     @Active = True

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	:UserID,
	:SiteID,
	:Active
)

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


﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1078Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue1078Table"
		(
			"UserID" Int     NOT NULL,
			"SiteID" Int     NOT NULL,
			"Active" Char(1) NOT NULL,

			CONSTRAINT "PK_Issue1078Table" PRIMARY KEY ("UserID")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @UserID Int32
SET     @UserID = 1
DECLARE @SiteID Int32
SET     @SiteID = 1
DECLARE @Active Int16
SET     @Active = 1

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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @UserID Int32
SET     @UserID = 2
DECLARE @SiteID Int32
SET     @SiteID = 1
DECLARE @Active Int16
SET     @Active = 0

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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @UserID Int32
SET     @UserID = 3
DECLARE @SiteID Int32
SET     @SiteID = 1
DECLARE @Active Int16
SET     @Active = 1

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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @UserID Int32
SET     @UserID = 4
DECLARE @SiteID Int32
SET     @SiteID = 2
DECLARE @Active Int16
SET     @Active = 0

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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @UserID Int32
SET     @UserID = 5
DECLARE @SiteID Int32
SET     @SiteID = 2
DECLARE @Active Int16
SET     @Active = 1

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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @UserID Int32
SET     @UserID = 6
DECLARE @SiteID Int32
SET     @SiteID = 2
DECLARE @Active Int16
SET     @Active = 0

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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @UserID Int32
SET     @UserID = 7
DECLARE @SiteID Int32
SET     @SiteID = 2
DECLARE @Active Int16
SET     @Active = 0

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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @UserID Int32
SET     @UserID = 8
DECLARE @SiteID Int32
SET     @SiteID = 3
DECLARE @Active Int16
SET     @Active = 0

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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @UserID Int32
SET     @UserID = 9
DECLARE @SiteID Int32
SET     @SiteID = 4
DECLARE @Active Int16
SET     @Active = 1

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
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	grp."SiteID",
	COUNT(*),
	COUNT(CASE
		WHEN CASE
			WHEN grp."Active" = 1 THEN 1
			ELSE 0
		END = 0
			THEN 1
		ELSE NULL
	END)
FROM
	"Issue1078Table" grp
GROUP BY
	grp."SiteID"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1078Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


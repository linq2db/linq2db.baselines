BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1078Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

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
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "Issue1078Table" ("UserID", "SiteID", "Active") VALUES (1,1,1)
	INTO "Issue1078Table" ("UserID", "SiteID", "Active") VALUES (2,1,0)
	INTO "Issue1078Table" ("UserID", "SiteID", "Active") VALUES (3,1,1)
	INTO "Issue1078Table" ("UserID", "SiteID", "Active") VALUES (4,2,0)
	INTO "Issue1078Table" ("UserID", "SiteID", "Active") VALUES (5,2,1)
	INTO "Issue1078Table" ("UserID", "SiteID", "Active") VALUES (6,2,0)
	INTO "Issue1078Table" ("UserID", "SiteID", "Active") VALUES (7,2,0)
	INTO "Issue1078Table" ("UserID", "SiteID", "Active") VALUES (8,3,0)
	INTO "Issue1078Table" ("UserID", "SiteID", "Active") VALUES (9,4,1)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	grp."SiteID",
	COUNT(*),
	COUNT(CASE
		WHEN grp."Active" = 0 THEN 1
		ELSE NULL
	END)
FROM
	"Issue1078Table" grp
GROUP BY
	grp."SiteID"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1078Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


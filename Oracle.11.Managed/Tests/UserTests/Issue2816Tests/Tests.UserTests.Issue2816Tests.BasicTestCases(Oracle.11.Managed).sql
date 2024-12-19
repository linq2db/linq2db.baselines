BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2816Table"';
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
		CREATE TABLE "Issue2816Table"
		(
			"Id"   Int          NOT NULL,
			"Text" VarChar(255)     NULL,

			CONSTRAINT "PK_Issue2816Table" PRIMARY KEY ("Id")
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
	INTO "Issue2816Table" ("Id", "Text") VALUES (0,'')
	INTO "Issue2816Table" ("Id", "Text") VALUES (1,'a')
	INTO "Issue2816Table" ("Id", "Text") VALUES (2,' m ')
	INTO "Issue2816Table" ("Id", "Text") VALUES (3,' ')
	INTO "Issue2816Table" ("Id", "Text") VALUES (4,'  ')
	INTO "Issue2816Table" ("Id", "Text") VALUES (5,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."Id",
	p."Text"
FROM
	"Issue2816Table" p
WHERE
	p."Text" IS NULL OR LTRIM(p."Text", '	
                 　') IS NULL

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Text"
FROM
	"Issue2816Table" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2816Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


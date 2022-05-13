﻿BeforeExecute
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
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Text Varchar2(1) -- String
SET     @Text = ' '

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	:Id,
	:Text
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Text Varchar2(3) -- String
SET     @Text = '   '

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	:Id,
	:Text
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Text Varchar2(4) -- String
SET     @Text = '  x '

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	:Id,
	:Text
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."Id",
	p."Text"
FROM
	"Issue2816Table" p
WHERE
	NOT (p."Text" IS NULL OR LTRIM(p."Text", '	
                 　') IS NULL)

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


﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "Issue1096Task"
(
	"Id"         Int          NOT NULL,
	"TargetName" VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "Issue1096TaskStage"
(
	"Id"     Int     NOT NULL,
	"TaskId" Int     NOT NULL,
	"Actual" Char(1) NOT NULL,

	CONSTRAINT "PK_Issue1096TaskStage" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @TargetName Varchar2(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Issue1096Task"
(
	"Id",
	"TargetName"
)
VALUES
(
	:Id,
	:TargetName
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @TargetName Varchar2(12) -- String
SET     @TargetName = 'bda.Requests'

INSERT INTO "Issue1096Task"
(
	"Id",
	"TargetName"
)
VALUES
(
	:Id,
	:TargetName
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @TaskId Int32
SET     @TaskId = 1
DECLARE @Actual Int16
SET     @Actual = 1

INSERT INTO "Issue1096TaskStage"
(
	"Id",
	"TaskId",
	"Actual"
)
VALUES
(
	:Id,
	:TaskId,
	:Actual
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."Id",
	t1."TargetName",
	t1."Id_1",
	t1."TaskId",
	t1."Actual"
FROM
	(
		SELECT DISTINCT
			t."Id",
			t."TargetName",
			a_ActualStage."Id" as "Id_1",
			a_ActualStage."TaskId",
			a_ActualStage."Actual"
		FROM
			"Issue1096Task" t
				LEFT JOIN "Issue1096TaskStage" a_ActualStage ON t."Id" = a_ActualStage."TaskId" AND a_ActualStage."Actual" = 1
	) t1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1096TaskStage"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1096Task"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "OrgGroup"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "OrgGroup"
(
	"Id"        Int  NOT NULL,
	"ParentId"  Int  NOT NULL,
	"GroupName" text     NULL,

	CONSTRAINT "PK_OrgGroup" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

WITH RECURSIVE previous
(
	"OrgGroup_Id",
	"OrgGroup_ParentId",
	"OrgGroup_GroupName",
	"Depth"
)
AS
(
	SELECT
		parent."Id",
		parent."ParentId",
		parent."GroupName",
		0
	FROM
		"OrgGroup" parent
	UNION
	SELECT
		child."Id",
		child."ParentId",
		child."GroupName",
		parent_1."Depth" + 1
	FROM
		"OrgGroup" child
			INNER JOIN previous parent_1 ON parent_1."OrgGroup_Id" = child."ParentId"
)
SELECT
	t1."OrgGroup_Id",
	t1."OrgGroup_ParentId",
	t1."OrgGroup_GroupName"
FROM
	previous t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "OrgGroup"


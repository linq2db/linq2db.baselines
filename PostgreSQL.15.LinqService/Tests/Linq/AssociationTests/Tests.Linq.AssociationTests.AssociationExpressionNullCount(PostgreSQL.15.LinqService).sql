﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NotNullParent"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "NotNullParent"
(
	"ID" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO "NotNullParent"
(
	"ID"
)
VALUES
(
	:ID
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 2

INSERT INTO "NotNullParent"
(
	"ID"
)
VALUES
(
	:ID
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NotNullChild"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "NotNullChild"
(
	"ParentID" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

INSERT INTO "NotNullChild"
(
	"ParentID"
)
VALUES
(
	:ParentID
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	"NotNullParent" p
		LEFT JOIN "NotNullChild" "a_ChildOuter" ON p."ID" = "a_ChildOuter"."ParentID"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NotNullChild"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NotNullParent"


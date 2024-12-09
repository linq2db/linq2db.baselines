BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NC_CODE"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "NC_CODE"
(
	"HANDLE"             text      NOT NULL,
	"CHANGE_STAMP"       decimal       NULL,
	"SITE"               text          NULL,
	"NC_CODE"            text          NULL,
	"DESCRIPTION"        text          NULL,
	"STATUS_BO"          text          NULL,
	"CREATED_DATE_TIME"  TimeStamp     NULL,
	"MODIFIED_DATE_TIME" TimeStamp     NULL,
	"NC_CATEGORY"        text          NULL,
	"DPMO_CATEGORY_BO"   text          NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NC_GROUP_MEMBER"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "NC_GROUP_MEMBER"
(
	"HANDLE"               text    NOT NULL,
	"NC_GROUP_BO"          text        NULL,
	"NC_CODE_OR_GROUP_GBO" text        NULL,
	"SEQUENCE"             decimal     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @ncCodeBo Text(30) -- String
SET     @ncCodeBo = 'NCCodeBO:8110,SETUP_OSCILLOSCO'

WITH "AllowedNcCode" ("NcCodeBo", "NcCode", "NcCodeDescription")
AS
(
	SELECT DISTINCT
		"ncCode"."HANDLE" as "NcCodeBo",
		"ncCode"."NC_CODE" as "NcCode",
		"ncCode"."DESCRIPTION" as "NcCodeDescription"
	FROM
		"NC_CODE" "ncCode"
			INNER JOIN "NC_GROUP_MEMBER" "ncGroupMember" ON "ncCode"."HANDLE" = "ncGroupMember"."NC_CODE_OR_GROUP_GBO"
	WHERE
		"ncGroupMember"."NC_GROUP_BO" = 'NCGroupBO:' || "ncCode"."SITE" || ',CATAN_AUTO' OR
		"ncGroupMember"."NC_GROUP_BO" IS NULL AND 'NCGroupBO:' || "ncCode"."SITE" || ',CATAN_AUTO' IS NULL OR
		"ncGroupMember"."NC_GROUP_BO" = 'NCGroupBO:' || "ncCode"."SITE" || ',CATAN_MAN' OR
		"ncGroupMember"."NC_GROUP_BO" IS NULL AND 'NCGroupBO:' || "ncCode"."SITE" || ',CATAN_MAN' IS NULL OR
		"ncGroupMember"."NC_GROUP_BO" = 'NCGroupBO:' || "ncCode"."SITE" || ',CATAN_ALL' OR
		"ncGroupMember"."NC_GROUP_BO" IS NULL AND 'NCGroupBO:' || "ncCode"."SITE" || ',CATAN_ALL' IS NULL
)
SELECT
	item_1."NcCodeBo",
	item_1."NcCode",
	item_1."NcCodeDescription"
FROM
	"AllowedNcCode" item_1
WHERE
	item_1."NcCodeBo" = :ncCodeBo

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NC_GROUP_MEMBER"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "NC_CODE"


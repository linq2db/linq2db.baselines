﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Condos"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Condos"
(
	"Id"         Int NOT NULL,
	"LocationId" Int NOT NULL,

	CONSTRAINT "PK_Condos" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "CategoryCondos"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "CategoryCondos"
(
	"CategoryId" Int NOT NULL,
	"CondoId"    Int NOT NULL,

	CONSTRAINT "PK_CategoryCondos" PRIMARY KEY ("CategoryId", "CondoId")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "CondoTags"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "CondoTags"
(
	"CondoId" Int NOT NULL,
	"TagId"   Int NOT NULL,

	CONSTRAINT "PK_CondoTags" PRIMARY KEY ("CondoId", "TagId")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Locations"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Locations"
(
	"Id"           Int          NOT NULL,
	"LocationName" VarChar(100) NOT NULL,

	CONSTRAINT "PK_Locations" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."Id",
	c_1."LocationId",
	t4."CountCondoCategories",
	t2."CountCondoTags",
	l."LocationName",
	l."Id"
FROM
	"Condos" c_1
		INNER JOIN "Locations" l ON c_1."LocationId" = l."Id"
		LEFT JOIN (
			SELECT
				ctleft."CondoId" as subct,
				ctleft."CountCondoTags"
			FROM
				(
					SELECT
						t1."CondoId",
						Count(*) as "CountCondoTags"
					FROM
						"CondoTags" t1
					GROUP BY
						t1."CondoId"
				) ctleft
		) t2 ON c_1."Id" = t2.subct
		LEFT JOIN (
			SELECT
				ccleft."CondoId" as subcc,
				ccleft."CountCondoCategories"
			FROM
				(
					SELECT
						t3."CondoId",
						Count(*) as "CountCondoCategories"
					FROM
						"CategoryCondos" t3
					GROUP BY
						t3."CondoId"
				) ccleft
		) t4 ON c_1."Id" = t4.subcc

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Locations"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "CondoTags"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "CategoryCondos"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Condos"


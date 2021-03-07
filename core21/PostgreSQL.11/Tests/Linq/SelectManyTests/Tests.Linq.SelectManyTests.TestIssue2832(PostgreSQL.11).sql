BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "DctSetpointtype"
(
	"Id" BIGSERIAL  NOT NULL,

	CONSTRAINT "PK_DctSetpointtype" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "VWellTree"
(
	"ShopId" Decimal     NULL,
	"WellId" BigInt      NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "DctOu"
(
	"ParentId" BigInt         NULL,
	"Id"       BIGSERIAL  NOT NULL,

	CONSTRAINT "PK_DctOu" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "UacUsersDatagroup"
(
	"Inheritablepermission" Int    NOT NULL,
	"Permission"            Int    NOT NULL,
	"DatagroupId"           BigInt NOT NULL,
	"UserId"                BigInt NOT NULL,

	CONSTRAINT "PK_UacUsersDatagroup" PRIMARY KEY ("UserId", "DatagroupId")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Deviation"
(
	"WellId"         BigInt NOT NULL,
	"SetpointtypeId" BigInt NOT NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	spt."Id"
FROM
	"DctSetpointtype" spt
		LEFT JOIN (
			SELECT
				d."SetpointtypeId",
				cudg."Permission",
				oudg."Inheritablepermission"
			FROM
				"VWellTree" w
					INNER JOIN "DctOu" c_1 ON w."ShopId" = c_1."Id"
					LEFT JOIN "UacUsersDatagroup" oudg ON c_1."ParentId" = oudg."DatagroupId" AND oudg."UserId" = 150 AND oudg."Inheritablepermission" > 0
					LEFT JOIN "UacUsersDatagroup" cudg ON c_1."Id" = cudg."DatagroupId" AND cudg."UserId" = 150
					INNER JOIN "Deviation" d ON w."WellId" = d."WellId"
		) t1 ON t1."SetpointtypeId" = spt."Id" AND Cast((t1."Permission" + t1."Inheritablepermission") as Decimal(29, 10)) IS NOT NULL

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE "Deviation"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE "UacUsersDatagroup"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE "DctOu"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE "VWellTree"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE "DctSetpointtype"


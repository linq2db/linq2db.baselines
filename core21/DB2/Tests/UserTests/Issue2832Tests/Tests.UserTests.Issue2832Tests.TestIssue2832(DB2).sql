BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "DctSetpointtype"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_DctSetpointtype" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "VWellTree"
(
	"ShopId" Decimal     NULL,
	"WellId" Int         NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "DctOu"
(
	"ParentId" Int     NULL,
	"Id"       Int NOT NULL,

	CONSTRAINT "PK_DctOu" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "UacUsersDatagroup"
(
	"Inheritablepermission" Int NOT NULL,
	"Permission"            Int NOT NULL,
	"DatagroupId"           Int NOT NULL,
	"UserId"                Int NOT NULL,

	CONSTRAINT "PK_UacUsersDatagroup" PRIMARY KEY ("UserId", "DatagroupId")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Deviation"
(
	"WellId"         Int NOT NULL,
	"SetpointtypeId" Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"spt"."Id"
FROM
	"DctSetpointtype" "spt"
		LEFT JOIN (
			SELECT
				"d"."SetpointtypeId",
				"cudg"."Permission",
				"oudg"."Inheritablepermission"
			FROM
				"VWellTree" "w"
					INNER JOIN "DctOu" "c_1" ON "w"."ShopId" = "c_1"."Id"
					LEFT JOIN "UacUsersDatagroup" "oudg" ON "c_1"."ParentId" = "oudg"."DatagroupId" AND "oudg"."UserId" = 150 AND "oudg"."Inheritablepermission" > 0
					LEFT JOIN "UacUsersDatagroup" "cudg" ON "c_1"."Id" = "cudg"."DatagroupId" AND "cudg"."UserId" = 150
					INNER JOIN "Deviation" "d" ON "w"."WellId" = "d"."WellId"
		) "t1" ON "t1"."SetpointtypeId" = "spt"."Id" AND Decimal("t1"."Permission" + "t1"."Inheritablepermission", 29, 10) IS NOT NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Deviation"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "UacUsersDatagroup"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "DctOu"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "VWellTree"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "DctSetpointtype"


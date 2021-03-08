BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT '
		CREATE TABLE "DctSetpointtype"
		(
			"Id" Int  NOT NULL,

			CONSTRAINT "PK_DctSetpointtype" PRIMARY KEY ("Id")
		)
	';
	EXECUTE STATEMENT '
		CREATE GENERATOR "GIDENTITY_DctSetpointtype"
	';
	EXECUTE STATEMENT '
		CREATE TRIGGER "TIDENTITY_DctSetpointtype" FOR "DctSetpointtype"
		BEFORE INSERT POSITION 0
		AS BEGIN
			NEW."Id" = GEN_ID("GIDENTITY_DctSetpointtype", 1);
		END
	';
END

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "VWellTree"
(
	"ShopId" Decimal,
	"WellId" Int
)

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT '
		CREATE TABLE "DctOu"
		(
			"ParentId" Int,
			"Id"       Int  NOT NULL,

			CONSTRAINT "PK_DctOu" PRIMARY KEY ("Id")
		)
	';
	EXECUTE STATEMENT '
		CREATE GENERATOR "GIDENTITY_DctOu"
	';
	EXECUTE STATEMENT '
		CREATE TRIGGER "TIDENTITY_DctOu" FOR "DctOu"
		BEFORE INSERT POSITION 0
		AS BEGIN
			NEW."Id" = GEN_ID("GIDENTITY_DctOu", 1);
		END
	';
END

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "UacUsersDatagroup"
(
	"Inheritablepermission" Int NOT NULL,
	"Permission"            Int NOT NULL,
	"DatagroupId"           Int NOT NULL,
	"UserId"                Int NOT NULL,

	CONSTRAINT "PK_UacUsersDatagroup" PRIMARY KEY ("UserId", "DatagroupId")
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Deviation"
(
	"WellId"         Int NOT NULL,
	"SetpointtypeId" Int NOT NULL
)

BeforeExecute
-- Firebird3 Firebird

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
		) "t1" ON "t1"."SetpointtypeId" = "spt"."Id" AND Cast(("t1"."Permission" + "t1"."Inheritablepermission") as Decimal(18, 10)) IS NOT NULL

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Deviation"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "UacUsersDatagroup"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_DctOu"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_DctOu"';
	EXECUTE STATEMENT 'DROP TABLE "DctOu"';
END

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "VWellTree"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_DctSetpointtype"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_DctSetpointtype"';
	EXECUTE STATEMENT 'DROP TABLE "DctSetpointtype"';
END


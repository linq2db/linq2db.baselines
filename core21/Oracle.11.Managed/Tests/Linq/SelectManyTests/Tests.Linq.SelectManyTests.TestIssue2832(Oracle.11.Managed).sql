BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "DctSetpointtype"
(
	"Id" Number(19)  NOT NULL,

	CONSTRAINT "PK_DctSetpointtype" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE SEQUENCE "SIDENTITY_DctSetpointtype"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE OR REPLACE TRIGGER "TIDENTITY_DctSetpointtype"
BEFORE INSERT ON "DctSetpointtype" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_DctSetpointtype".NEXTVAL INTO :NEW."Id" FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "VWellTree"
(
	"ShopId" Decimal        NULL,
	"WellId" Number(19)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "DctOu"
(
	"ParentId" Number(19)      NULL,
	"Id"       Number(19)  NOT NULL,

	CONSTRAINT "PK_DctOu" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE SEQUENCE "SIDENTITY_DctOu"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE OR REPLACE TRIGGER "TIDENTITY_DctOu"
BEFORE INSERT ON "DctOu" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_DctOu".NEXTVAL INTO :NEW."Id" FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "UacUsersDatagroup"
(
	"Inheritablepermission" Int        NOT NULL,
	"Permission"            Int        NOT NULL,
	"DatagroupId"           Number(19) NOT NULL,
	"UserId"                Number(19) NOT NULL,

	CONSTRAINT "PK_UacUsersDatagroup" PRIMARY KEY ("UserId", "DatagroupId")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "Deviation"
(
	"WellId"         Number(19) NOT NULL,
	"SetpointtypeId" Number(19) NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "Deviation"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "UacUsersDatagroup"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_DctOu"';
	EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_DctOu"';
	EXECUTE IMMEDIATE 'DROP TABLE "DctOu"';
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "VWellTree"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_DctSetpointtype"';
	EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_DctSetpointtype"';
	EXECUTE IMMEDIATE 'DROP TABLE "DctSetpointtype"';
END;

